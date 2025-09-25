import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  final checkboxes = {
    for (int i = 0; i < faker.randomGenerator.integer(10, min: 1); i++) i.toString(): faker.randomGenerator.boolean(),
  };
  final notifier = MyoroGroupCheckboxNotifier(checkboxes: checkboxes);

  tearDown(notifier.dispose);

  testWidgets('MyoroGroupCheckbox', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroGroupCheckbox(notifier: notifier, configuration: MyoroGroupCheckboxConfiguration.fake()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroGroupCheckbox), findsOneWidget);
    expect(find.byType(MyoroCheckbox), findsNWidgets(checkboxes.length));
    await tester.tap(find.byType(Checkbox).first);
  });
}
