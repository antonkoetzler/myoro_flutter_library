import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final checkboxesQuantity = faker.randomGenerator.integer(10, min: 1);
  final checkboxes = {for (int i = 0; i < checkboxesQuantity; i++) i.toString(): faker.randomGenerator.boolean()};
  final controller = MyoroGroupCheckboxController(checkboxes: checkboxes);

  tearDownAll(controller.dispose);

  test('MyoroGroupCheckboxController.toggle', () {
    final key = faker.randomGenerator.integer(checkboxesQuantity).toString();
    final oldKeyValue = checkboxes[key];
    controller.toggle(key);
    expect(controller.checkboxes[key], isNot(oldKeyValue));
    controller.toggle(key, oldKeyValue);
    expect(controller.checkboxes[key], oldKeyValue);
  });

  test('MyoroGroupCheckboxController.changeAll', () {
    controller.changeAll();
    controller.checkboxes.forEach((_, value) => expect(value, isFalse));
    controller.changeAll(true);
    controller.checkboxes.forEach((_, value) => expect(value, isTrue));
  });
}
