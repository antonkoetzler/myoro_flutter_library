import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

import '../../test_exports.dart';

/// Unit test for [MyoroNumberInputFormatter].
void main() {
  final controller = TextEditingController();
  final minNotifier = ValueNotifier<double>(0);
  final maxNotifier = ValueNotifier<double?>(null);
  final decimalPlacesNotifier = ValueNotifier<int>(0);

  Future<void> insertText(WidgetTester tester, String text) async {
    await tester.enterText(find.byType(MyoroInput), text);
    await tester.pumpAndSettle();
  }

  tearDown(() {
    controller.dispose();
    minNotifier.dispose();
    maxNotifier.dispose();
    decimalPlacesNotifier.dispose();
  });

  testWidgets('MyoroNumberInputFormatter', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: minNotifier,
          builder: (_, double min, __) {
            return ValueListenableBuilder(
              valueListenable: maxNotifier,
              builder: (_, double? max, __) {
                return ValueListenableBuilder(
                  valueListenable: decimalPlacesNotifier,
                  builder: (_, int decimalPlaces, __) {
                    return MyoroInput.number(
                      min: min,
                      max: max,
                      decimalPlaces: decimalPlaces,
                      configuration: MyoroInputConfiguration(
                        controller: controller,
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Confirm that only numbers may be used.
    await insertText(tester, 'qoiejqoeiqjweoij');
    expect(controller.text, '0');

    // Case #1: min = 0, max = null, decimalPlaces = 0
    await insertText(tester, '1234567890');
    expect(controller.text, '1234567890');

    // Case #2: min = 500, max = null, decimalPlaces = 0
    minNotifier.value = 500;
    await insertText(tester, '200');
    expect(controller.text, '500');
    minNotifier.value = 0;

    // Case #3: min = 0, max = 1000, decimalPlaces = 0
    maxNotifier.value = 1000;
    await insertText(tester, '1234567890');
    expect(controller.text, '1000');
    maxNotifier.value = null;

    // Case #4: min = 0, max = null, decimalPlaces = 2
    decimalPlacesNotifier.value = 2;
    await insertText(tester, '1234');
    expect(controller.text, '123.40');
    decimalPlacesNotifier.value = 0;
  });
}
