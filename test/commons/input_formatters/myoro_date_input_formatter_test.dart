import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test of [MyoroDateInputFormatter].
void main() {
  final controller = TextEditingController();

  tearDown(() => controller.dispose());

  testWidgets('MyoroDateInputFormatter', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroInput.date(
          configuration: MyoroInputConfiguration(
            controller: controller,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    final inputFinder = find.byType(MyoroInput);

    // Inserting text to create a date.
    await tester.enterText(inputFinder, '11');
    await tester.pumpAndSettle();
    expect(controller.text, '11');
    await tester.enterText(inputFinder, '1111');
    await tester.pumpAndSettle();
    expect(controller.text, '11/11');
    await tester.enterText(inputFinder, '11111111');
    await tester.pumpAndSettle();
    expect(controller.text, '11/11/1111');

    // Asserting that adding more numbers doesn't do anything.
    await tester.enterText(inputFinder, 'qoiwejqwoiejqwoiejoij11111111111111');
    await tester.pumpAndSettle();
    expect(controller.text, '11/11/1111');
  });
}
