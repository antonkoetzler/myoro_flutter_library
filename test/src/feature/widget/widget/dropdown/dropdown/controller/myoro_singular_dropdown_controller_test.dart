import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final controller = MyoroSingularDropdownController<String>(
    configuration: MyoroSingularDropdownConfiguration(
      menuConfiguration: MyoroSingularMenuConfiguration(
        request: List.generate(faker.randomGenerator.integer(10), (i) => 'Item #$i').toSet,
        itemBuilder: (v) => MyoroMenuItem(
          iconTextButtonConfiguration: MyoroIconTextButtonConfiguration(
            textConfiguration: MyoroTextConfiguration(text: v),
          ),
        ),
      ),
      selectedItemBuilder: (v) => v,
    ),
  );

  tearDownAll(controller.dispose);

  test('MyoroSingularDropdownController', () {
    final item = faker.lorem.word();
    controller.toggleItem(item);
    expect(controller.selectedItem, item);
    controller.clear();
    expect(controller.selectedItem, isNull);
  });

  test('MyoroSingularDropdownController.toggleEnabled', () {
    final enabled = controller.enabled;
    controller.toggleEnabled(!enabled);
    expect(controller.enabledNotifier.value, !enabled);
  });
}
