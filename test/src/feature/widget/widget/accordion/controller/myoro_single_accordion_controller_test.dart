import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

  final controller = MyoroSingleAccordionController(
    configuration: MyoroSingleAccordionConfiguration.fake(items: items),
  );

  tearDownAll(controller.dispose);

  test('MyoroSingleAccordionController.toggleItem', () {
    final item = items.elementAt(faker.randomGenerator.integer(items.length));
    controller.toggleItem(item);
    expect(controller.selectedItem, item);
    controller.toggleItem(item);
    expect(controller.selectedItem, isNull);
  });

  test('MyoroSingleAccordionController.reset', () {
    final item = items.elementAt(faker.randomGenerator.integer(items.length));
    controller.toggleItem(item);
    expect(controller.selectedItem, item);
    controller.reset();
    expect(controller.selectedItem, isNull);
  });
}
