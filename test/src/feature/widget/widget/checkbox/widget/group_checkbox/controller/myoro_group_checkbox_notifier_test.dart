import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final checkboxesQuantity = faker.randomGenerator.integer(10, min: 1);
  final checkboxes = {for (int i = 0; i < checkboxesQuantity; i++) i.toString(): faker.randomGenerator.boolean()};
  final notifier = MyoroGroupCheckboxNotifier(checkboxes: checkboxes);

  tearDownAll(notifier.dispose);

  test('MyoroGroupCheckboxNotifier.toggle', () {
    final key = faker.randomGenerator.integer(checkboxesQuantity).toString();
    final oldKeyValue = checkboxes[key];
    notifier.toggle(key);
    expect(notifier.checkboxes[key], isNot(oldKeyValue));
    notifier.toggle(key, oldKeyValue);
    expect(notifier.checkboxes[key], oldKeyValue);
  });

  test('MyoroGroupCheckboxController.changeAll', () {
    notifier.changeAll();
    notifier.checkboxes.forEach((_, value) => expect(value, isFalse));
    notifier.changeAll(true);
    notifier.checkboxes.forEach((_, value) => expect(value, isTrue));
  });
}
