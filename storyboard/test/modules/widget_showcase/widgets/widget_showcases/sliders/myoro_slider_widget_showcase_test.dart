import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSliderWidgetShowcase].
void main() {
  testWidgets('MyoroSliderWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroSliderWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSliderWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroSlider), findsNWidgets(2));
    expect(find.widgetWithText(MyoroInput, '[MyoroSlider.label]'), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> &&
            w.configuration.label == '[MyoroSlider.labelTextStyle]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, '[MyoroSlider.width]'), findsOneWidget);
    expect(find.widgetWithText(MyoroCheckbox, 'Label on the left?'), findsOneWidget);
    expect(find.widgetWithText(MyoroCheckbox, 'Label on the right?'), findsOneWidget);
    expect(find.widgetWithText(MyoroCheckbox, 'Label on the bottom?'), findsOneWidget);
  });
}
