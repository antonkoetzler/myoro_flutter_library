import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroBasicDividerWidgetShowcase].
void main() {
  testWidgets('MyoroBasicDivider', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroBasicDividerWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroBasicDividerWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroBasicDivider), findsAtLeastNWidgets(1));
    expect(find.widgetWithText(MyoroIconTextButton, 'A button'), findsOneWidget);
    expect(find.widgetWithText(MyoroIconTextButton, 'Another button'), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Axis> &&
            w.configuration.label == '[MyoroBasicDivider.direction]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, '[MyoroBasicDivider.shortValue]'), findsOneWidget);
    expect(find.widgetWithText(MyoroSlider, 'Vertical padding'), findsOneWidget);
    expect(find.widgetWithText(MyoroSlider, 'Horizontal padding'), findsOneWidget);
  });
}
