import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Unit test [MyoroGroupCheckboxNotifier].
void main() {
  final checkboxes = {
    for (int i = 0; i < faker.randomGenerator.integer(50); i++) '$i': faker.randomGenerator.boolean(),
  };
  final notifier = MyoroGroupCheckboxNotifier(checkboxes);

  bool allCheckboxesTrue() {
    bool allCheckboxesAreTrue = true;
    for (int i = 0; i < notifier.checkboxes.keys.length; i++) {
      if (!notifier.checkboxes['$i']!) {
        allCheckboxesAreTrue = false;
        break;
      }
    }
    return allCheckboxesAreTrue;
  }

  tearDownAll(() => notifier.dispose());

  test('MyoroGroupCheckboxNotifier.toggle', () {
    final key = checkboxes.keys.elementAt(faker.randomGenerator.integer(checkboxes.keys.length));
    final keyOldValue = notifier.checkboxes[key];
    notifier.toggle(key);
    expect(notifier.checkboxes[key], !keyOldValue!);
    notifier.toggle(key, true);
    expect(notifier.checkboxes[key], isTrue);
    notifier.toggle(key, false);
    expect(notifier.checkboxes[key], isFalse);
  });

  test('MyoroGroupCheckboxNotifier.changeAll', () {
    notifier.changeAll();
    expect(allCheckboxesTrue(), isFalse);
    notifier.changeAll(true);
    expect(allCheckboxesTrue(), isTrue);
    notifier.changeAll(false);
    expect(allCheckboxesTrue(), isFalse);
  });
}
