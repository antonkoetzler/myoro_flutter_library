import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final items = List.generate(faker.randomGenerator.integer(10, min: 1), (index) => 'Item #$index').toSet();

  final configurationNotifier = ValueNotifier(MyoroSingleAccordionConfiguration<String>.fake(items: items));

  tearDown(configurationNotifier.dispose);

  testWidgets('MyoroSingleAccordion', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: ValueListenableBuilder(
          valueListenable: configurationNotifier,
          builder: (_, c, _) => MyoroSingleAccordion(configuration: c),
        ),
      ),
    );
    await tester.pumpAndSettle();
    configurationNotifier.notifyListeners();
    await tester.pumpAndSettle();
  });
}
