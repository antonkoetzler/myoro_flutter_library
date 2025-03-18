import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroTimeInputFormatter].
void main() {
  final controller = TextEditingController();
  final formatTypeNotifier = ValueNotifier<MyoroTimeInputFormatterEnum>(
    MyoroTimeInputFormatterEnum.mmSs,
  );

  Future<void> enterText(WidgetTester tester, String text) async {
    await tester.enterText(find.byType(MyoroInput), text);
    await tester.pumpAndSettle();
  }

  tearDown(() {
    controller.dispose();
    formatTypeNotifier.dispose();
  });

  testWidgets('MyoroTimeInputFormatter', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: formatTypeNotifier,
          builder: (_, MyoroTimeInputFormatterEnum formatType, __) {
            return MyoroInput.time(
              formatType: formatType,
              configuration: MyoroInputConfiguration(controller: controller),
            );
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Assert that only numbers are accepted.
    await enterText(tester, 'qwejoijwqeiojoij!%!#%%#\$%&#%werjweoirjweroij');
    expect(controller.text.isEmpty, isTrue);

    // Case #1: [MyoroTimeInputFormatterEnum.mmSs].
    await enterText(tester, '1234');
    expect(controller.text, '12:34');

    // Case #2: [MyoroTimeInputFormatterEnum.hhMmSs].
    formatTypeNotifier.value = MyoroTimeInputFormatterEnum.hhMmSs;
    await enterText(tester, '345678');
    expect(controller.text, '34:56:78');
  });
}
