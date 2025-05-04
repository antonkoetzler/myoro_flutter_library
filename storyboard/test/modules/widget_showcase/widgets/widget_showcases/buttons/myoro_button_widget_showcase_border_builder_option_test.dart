import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBorderBuilderOption', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        child: MyoroButtonWidgetShowcaseBorderBuilderOption(),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.byType(MyoroButtonWidgetShowcaseBorderBuilderOption),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(
        MyoroCheckbox,
        '[MyoroButtonConfiguration.borderBuilder]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, 'Border width'), findsOneWidget);
    expect(
      find.widgetWithText(ColorWidgetShowcaseOption, 'Idle color'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(ColorWidgetShowcaseOption, 'Hover color'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(ColorWidgetShowcaseOption, 'Tap color'),
      findsOneWidget,
    );
  });
}
