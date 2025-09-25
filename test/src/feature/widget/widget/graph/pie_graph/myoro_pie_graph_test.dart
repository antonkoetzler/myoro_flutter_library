import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    MyoroPieGraphConfiguration Function() configurationBuilder, [
    Function()? callback,
  ]) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroPieGraph(configuration: configurationBuilder())));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroPieGraph), findsOneWidget);
    await callback?.call();
  }

  testWidgets('MyoroPieGraph with MyoroPieGraphConfiguration.typeEnum as MyoroPieGraphEnum.pie', (tester) async {
    await testCase(
      tester,
      () => MyoroPieGraphConfiguration(
        typeEnum: MyoroPieGraphEnum.pie,
        items: List.generate(
          faker.randomGenerator.integer(5, min: 1),
          (_) => MyoroPieGraphItem(value: faker.randomGenerator.decimal(scale: 50)),
        ),
      ),
    );
  });

  testWidgets(
    'MyoroPieGraph with MyoroPieGraphConfiguration.typeEnum as MyoroPieGraphEnum.donut and MyoroPieGraphConfiguration.centerWidget not provided',
    (tester) async {
      final centerWidgetText = faker.lorem.word();

      await testCase(
        tester,
        () => MyoroPieGraphConfiguration(
          typeEnum: MyoroPieGraphEnum.donut,
          centerWidget: Text(centerWidgetText),
          items: List.generate(
            faker.randomGenerator.integer(5, min: 1),
            (_) => MyoroPieGraphItem(value: faker.randomGenerator.decimal(scale: 50)),
          ),
        ),
      );
    },
  );

  testWidgets(
    'MyoroPieGraph with MyoroPieGraphConfiguration.typeEnum as MyoroPieGraphEnum.donut and MyoroPieGraphConfiguration.centerWidget not provided',
    (tester) async {
      final centerWidgetText = faker.lorem.word();

      await testCase(
        tester,
        () => MyoroPieGraphConfiguration(
          typeEnum: MyoroPieGraphEnum.donut,
          centerWidget: Text(centerWidgetText),
          items: List.generate(
            faker.randomGenerator.integer(5, min: 1),
            (_) => MyoroPieGraphItem(value: faker.randomGenerator.decimal(scale: 50)),
          ),
        ),
        () => expect(find.text(centerWidgetText), findsOneWidget),
      );
    },
  );
}
