import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroResizeDividerWidgetShowcase].
void main() {
  testWidgets('MyoroResizeDividerWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroResizeDividerWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroResizeDividerWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroResizeDivider), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<Axis> &&
            w.configuration.label == '[MyoroResizeDivider.direction]',
      ),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, '[MyoroResizeDivider.shortValue]'), findsOneWidget);
    expect(find.widgetWithText(MyoroSlider, 'Vertical padding'), findsOneWidget);
    expect(find.widgetWithText(MyoroSlider, 'Horizontal padding'), findsOneWidget);
  });
}
