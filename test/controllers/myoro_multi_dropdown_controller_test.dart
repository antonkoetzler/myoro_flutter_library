import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test for [MyoroMultiDropdownController].
void main() {
  final presetValues = List.generate(10, (int index) => index + 1);

  test('MyoroMultiDropdownController\'s constructor', () {
    // No preset values
    MyoroMultiDropdownController<int> controller =
        MyoroMultiDropdownController();
    expect(controller.selectedItems.isEmpty, isTrue);
    controller.dispose();

    controller = MyoroMultiDropdownController(presetValues);
    expect(controller.selectedItems, presetValues.toSet());
    controller.dispose();
  });

  test('MyoroMultiDropdownController.selectItems', () {
    MyoroMultiDropdownController<int> controller =
        MyoroMultiDropdownController();
    controller.selectItems(presetValues);
    expect(controller.selectedItems.length, presetValues.length);
    controller.dispose();

    controller = MyoroMultiDropdownController();
    controller.selectItems([
      ...presetValues,
      10,
    ]); // 10 repeated, should be converted to a set and removed.
    expect(controller.selectedItems.length, presetValues.length);
    controller.selectItems(presetValues); // Should add nothing.
    expect(controller.selectedItems.length, presetValues.length);
    controller.dispose();
  });

  test('MyoroMultiDropdownController.deselectItems', () {
    final controller = MyoroMultiDropdownController(presetValues);
    final randomPresetValues =
        List.generate(
          faker.randomGenerator.integer(presetValues.length),
          (_) =>
              presetValues[faker.randomGenerator.integer(presetValues.length)],
        ).toSet();

    final originalLength = controller.selectedItems.length;
    controller.deselectItems(randomPresetValues.toList());
    expect(
      controller.selectedItems.length,
      originalLength - randomPresetValues.length,
    );

    controller.clear();
    controller.deselectItems(presetValues);
    expect(controller.selectedItems.isEmpty, isTrue);

    controller.dispose();
  });

  test('MyoroMultiDropdownController.clear', () {
    final controller = MyoroMultiDropdownController(presetValues);
    controller.clear();
    expect(controller.selectedItems.isEmpty, isTrue);
    controller.dispose();
  });
}
