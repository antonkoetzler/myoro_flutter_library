import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroGroupRadioWidgetShowcase].
void main() {
  testWidgets('MyoroGroupRadioWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroGroupRadioWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupRadioWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroGroupRadio), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Axis> &&
            w.configuration.label == '[MyoroGroupRadio.direction]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, '[MyoroGroupRadio.spacing]'), findsOneWidget);
    expect(find.widgetWithText(MyoroSlider, '[MyoroGroupRadio.runSpacing]'), findsOneWidget);
  });
}
