import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

  final controller = MyoroMultiAccordionController(configuration: MyoroMultiAccordionConfiguration.fake(items: items));
  controller.configuration; // <-- Code coverage.

  tearDownAll(controller.dispose);

  test('MyoroMultiAccordionController.toggleItem', () {
    final item = items.elementAt(faker.randomGenerator.integer(items.length));
    controller.toggleItem(item);
    expect(controller.selectedItems, {item});
    controller.toggleItem(item);
    expect(controller.selectedItems, isEmpty);
  });

  test('MyoroMultiAccordionController.reset', () {
    final item = items.elementAt(faker.randomGenerator.integer(items.length));
    controller.toggleItem(item);
    expect(controller.selectedItems, {item});
    controller.reset();
    expect(controller.selectedItems, isEmpty);
  });
}
