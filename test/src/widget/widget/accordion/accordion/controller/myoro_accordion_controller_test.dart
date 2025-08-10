import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  MyoroAccordionItem buildAccordionItem(String text) {
    return MyoroAccordionItem(titleBuilder: (_) => Text(text), contentBuilder: (_) => Text('$text\'s content'));
  }

  final items = List.generate(
    faker.randomGenerator.integer(50, min: 1),
    (int index) => buildAccordionItem('Item #$index'),
  ).toSet();

  Future<void> testCase(Function(MyoroAccordionController) callback) async {
    final controller = MyoroAccordionController(items: items);
    await callback(controller);
    controller.dispose();
  }

  test('MyoroAccordionController constructor assertion case', () {
    expect(() => MyoroAccordionController(items: {}), throwsAssertionError);
  });

  test('MyoroAccordionController.expandItem', () {
    testCase((controller) {
      final randomItem = items.elementAt(faker.randomGenerator.integer(items.length));
      controller.expandItem(randomItem);
      expect(controller.expandedItem, randomItem);
    });
  });

  test('MyoroAccordionController.reset', () {
    testCase((controller) {
      final randomItem = items.elementAt(faker.randomGenerator.integer(items.length));
      controller
        ..expandItem(randomItem)
        ..reset();
      expect(controller.expandedItem, null);
    });
  });

  test('MyoroAccordionController.hashCode and == operator', () {
    testCase((controller) {
      final copyController = MyoroAccordionController(initiallyExpandedItem: controller.expandedItem, items: items);
      final uniqueController = MyoroAccordionController(items: {...items, buildAccordionItem(faker.lorem.word())});
      expect(controller == copyController, isTrue);
      expect(controller.hashCode == copyController.hashCode, isTrue);
      expect(controller == uniqueController, isFalse);
      expect(controller.hashCode == uniqueController.hashCode, isFalse);
    });
  });

  test('MyoroAccordionController.toString', () {
    testCase((controller) {
      expect(
        controller.toString(),
        'MyoroAccordionController(\n'
        '  value: ${controller.value},\n'
        '  items: ${controller.items},\n'
        ');',
      );
    });
  });
}
