import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

void main() {
  Future<void> testCase(
    WidgetTester tester,
    MyoroIconTextButtonConfiguration configuration,
    VoidCallback callback,
  ) async {
    await tester.pumpWidget(MyoroWidgetTester(child: MyoroIconTextButton(configuration: configuration)));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroIconTextButton), findsOneWidget);
    callback();
  }

  testWidgets('MyoroIconTextButton with either icon or text provided', (tester) async {
    final provideIcon = faker.randomGenerator.boolean();
    final configuration = MyoroIconTextButtonConfiguration.fake().copyWith(
      iconConfiguration: provideIcon ? MyoroIconConfiguration.fake() : null,
      textConfiguration: provideIcon ? null : MyoroTextConfiguration.fake(),
    );

    await testCase(
      tester,
      configuration,
      () => expect(
        provideIcon
            ? find.byIcon(configuration.iconConfiguration!.icon)
            : find.text(configuration.textConfiguration!.text),
        findsOneWidget,
      ),
    );
  });

  testWidgets('MyoroIconTextButton with icon and text provided', (tester) async {
    final configuration = MyoroIconTextButtonConfiguration.fake().copyWith(
      iconConfiguration: MyoroIconConfiguration.fake(),
      textConfiguration: MyoroTextConfiguration.fake(),
    );

    await testCase(tester, configuration, () {
      expect(find.byIcon(configuration.iconConfiguration!.icon), findsOneWidget);
      expect(find.text(configuration.textConfiguration!.text), findsOneWidget);
    });
  });
}
