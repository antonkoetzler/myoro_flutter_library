import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  testWidgets('MyoroInput', (tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroInput(
          configuration: faker.randomGenerator.boolean()
              ? const MyoroInputConfiguration()
              : MyoroInputConfiguration(checkboxOnChanged: (_, _) {}),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroInput), findsOneWidget);
  });

  testWidgets('MyoroInput.number', (tester) async {
    final max = faker.randomGenerator.decimal(scale: 100, min: 10);
    final min = faker.randomGenerator.decimal(scale: max);
    final decimalPlaces = faker.randomGenerator.integer(5);

    await tester.pumpWidget(
      MyoroWidgetTester(
        child: MyoroInput.number(
          min: min,
          max: max,
          decimalPlaces: decimalPlaces,
          configuration: faker.randomGenerator.boolean()
              ? const MyoroInputConfiguration()
              : MyoroInputConfiguration.fake(),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroInput), findsOneWidget);
  });
}
