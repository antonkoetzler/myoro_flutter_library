import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroMultiDropdownController<String>(
    configuration: MyoroMultiDropdownConfiguration(
      menuConfiguration: MyoroMenuConfiguration(
        request: List.generate(faker.randomGenerator.integer(10), (i) => 'Item #$i').toSet,
        itemBuilder: (v) => MyoroMenuItem(textConfiguration: MyoroTextConfiguration(text: v)),
      ),
      selectedItemBuilder: (v) => v,
    ),
  );

  tearDownAll(controller.dispose);

  test('MyoroMultiDropdownController.toggleItem', () {
    const string1 = 'One';
    const string2 = 'Two';

    controller.toggleItem(string1);
    expect(controller.selectedItems, {string1});
    controller.toggleItem(string2);
    expect(controller.selectedItems, {string1, string2});
    controller.toggleItem(string1);
    expect(controller.selectedItems, {string2});
    controller.clear();
    expect(controller.selectedItems.isEmpty, isTrue);
  });

  test('MyoroMultiDropdownController.toggleEnabled', () {
    // just for line coverage; ignore.
    controller.selectedItemsNotifier;
    // ignore: invalid_use_of_protected_member
    controller.viewModel.state.inputSize;

    final enabled = controller.enabled;
    controller.toggleEnabled(!enabled);
    expect(controller.enabledNotifier.value, !enabled);
  });
}
