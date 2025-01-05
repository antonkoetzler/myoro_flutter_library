// Unit test for [MyoroSingularDropdownController].

import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  test('MyoroSingularDropdownController\'s constructors', () {
    MyoroSingularDropdownController<int> controller = MyoroSingularDropdownController();
    expect(controller.selectedItem, isNull);
    controller.dispose();

    final item = faker.randomGenerator.integer(9999);
    controller = MyoroSingularDropdownController(item);
    expect(controller.selectedItem, item);
    controller.dispose();
  });

  test('MyoroSingularDropdownController.selectItem', () {
    final controller = MyoroSingularDropdownController<int>();
    final firstItem = faker.randomGenerator.integer(9999);
    final secondItem = faker.randomGenerator.integer(9999);
    controller.selectItem(firstItem);
    expect(controller.selectedItem, firstItem);
    controller.selectItem(secondItem);
    expect(controller.selectedItem, secondItem);
    controller.dispose();
  });

  test('MyoroSingularDropdownController.deselectItem', () {
    final controller = MyoroSingularDropdownController<int>();
    controller.deselectItem();
    expect(controller.selectedItem, isNull);
    controller
      ..selectItem(faker.randomGenerator.integer(9999))
      ..deselectItem();
    expect(controller.selectedItem, isNull);
  });
}
