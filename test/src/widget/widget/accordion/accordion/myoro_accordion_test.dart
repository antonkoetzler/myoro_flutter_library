import 'package:collection/collection.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 2), (index) {
    final text = 'Item #${index + 1}';
    return MyoroAccordionItem(titleBuilder: (_) => Text(text), contentBuilder: (_) => Text('$text\'s content'));
  }).toSet();

  testWidgets('MyoroAccordion.didUpdateWidget', (tester) async {
    final controller1 = MyoroAccordionController(
      initiallyExpandedItem: items.first,
      items: items.whereIndexed((index, _) => index < items.length / 2).toSet(),
    );
    final controller2 = MyoroAccordionController(
      initiallyExpandedItem: items.last,
      items: items.whereIndexed((index, _) => index >= items.length / 2).toSet(),
    );
    final controllerNotifier = ValueNotifier(controller1);

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: controllerNotifier,
          builder: (_, controller, _) => MyoroAccordion(controller: controller),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAccordion), findsOneWidget);

    // Expect that the initially selected item is expanded,
    // change the controller, then expect the newly selected item.
    expect(find.text('Item #1\'s content'), findsOneWidget);
    controllerNotifier.value = controller2;
    await tester.pump();
    expect(find.text('Item #1\'s content'), findsNothing);
    expect(find.text('Item #${items.length}\'s content'), findsOneWidget);

    controller1.dispose();
    controller2.dispose();
    controllerNotifier.dispose();
  });

  testWidgets('MyoroAccordion flow test', (tester) async {
    final controller = MyoroAccordionController(items: items);

    await tester.pumpWidget(MyoroWidgetTester(child: MyoroAccordion(controller: controller)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAccordion), findsOneWidget);

    // Open the first item and expect that the controller is updated and the item has been expanded.
    await tester.tap(find.text('Item #1'));
    await tester.pump();
    expect(controller.expandedItem, items.first);
    expect(find.text('Item #1\'s content'), findsOneWidget);

    // If we tap the item again, it should hide the item.
    await tester.tap(find.text('Item #1'));
    await tester.pump();
    expect(controller.expandedItem, isNull);
    expect(find.text('Item #1\'s content'), findsNothing);

    // If we expand the item by tapping it again, then tap another item, the
    // first item should hide and the second item's content should expand.
    await tester.tap(find.text('Item #1'));
    await tester.pump();
    await tester.tap(find.text('Item #2'));
    await tester.pump();
    expect(controller.expandedItem, items.elementAt(1));
    expect(find.text('Item #1\'s content'), findsNothing);
    expect(find.text('Item #2\'s content'), findsOneWidget);

    controller.dispose();
  });
}
