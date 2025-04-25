import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroTooltipWidgetShowcase].
void main() {
  testWidgets('MyoroTooltipWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroTooltipWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTooltipWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroTooltip), findsOneWidget);
    expect(find.text('Hover over me!'), findsOneWidget);
    expect(
      find.byWidgetPredicate((Widget w) => w is MyoroSlider && w.label == '[MyoroTooltip.margin]'),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget w) => w is MyoroInput && w.configuration.label == '[MyoroTooltip.text]',
      ),
      findsOneWidget,
    );
  });
}
