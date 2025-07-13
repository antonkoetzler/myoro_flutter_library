import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items =
      List.generate(faker.randomGenerator.integer(50, min: 1), (index) {
        final text = 'Item #$index';

        return MyoroAccordionItem(titleBuilder: (_) => Text(text), contentBuilder: (_) => Text('$text\'s content'));
      }).toSet();
  final controller = MyoroAccordionController(items: items);
  final viewModel = MyoroAccordionViewModel()..state.controller = controller;

  tearDownAll(() {
    viewModel.dispose();
    controller.dispose();
  });

  testWidgets('MyoroAccordionViewModel.itemTitleButtonBackgroundColorBuilder', (tester) async {
    late final MyoroButtonThemeExtension buttonThemeExtension;

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: Builder(
          builder: (context) {
            buttonThemeExtension = context.resolveThemeExtension<MyoroButtonThemeExtension>();
            return const SizedBox.shrink();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      viewModel.itemTitleButtonBackgroundColorBuilder(buttonThemeExtension),
      buttonThemeExtension.primaryIdleBackgroundColor,
    );
  });

  test('MyoroAccordionViewModel.itemTitleButtonOnTapUp', () {
    final randomItem = items.elementAt(faker.randomGenerator.integer(items.length));
    viewModel.itemTitleButtonOnTapUp(randomItem);
    expect(controller.expandedItem, randomItem);
    viewModel.itemTitleButtonOnTapUp(randomItem);
    expect(controller.expandedItem, isNull);
  });
}
