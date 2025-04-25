import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroRadioWidgetShowcase].
void main() {
  testWidgets('MyoroRadioWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroRadioWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroRadioWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroRadio), findsOneWidget);
    expect(find.widgetWithText(MyoroInput, '[MyoroRadio.label]'), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is MyoroSingularDropdown<TextStyle> &&
            w.configuration.label == '[MyoroRadio.labelTextStyle]',
      ),
      findsOneWidget,
    );
  });
}
