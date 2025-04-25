import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroGroupCheckboxWidgetShowcase].
void main() {
  testWidgets('MyoroGroupCheckboxWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(child: MyoroGroupCheckboxWidgetShowcase()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroGroupCheckboxWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroGroupCheckbox), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Axis> &&
            w.configuration.label == '[MyoroGroupCheckbox.direction]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroInput, '[MyoroGroupCheckbox.spacing]'), findsOneWidget);
    expect(find.widgetWithText(MyoroInput, '[MyoroGroupCheckbox.runSpacing]'), findsOneWidget);
  });
}
