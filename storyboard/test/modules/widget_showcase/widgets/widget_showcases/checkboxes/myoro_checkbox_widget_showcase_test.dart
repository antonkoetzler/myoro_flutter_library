import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroCheckboxWidgetShowcase].
void main() {
  testWidgets('MyoroCheckboxWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroCheckboxWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCheckboxWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroCheckbox), findsOneWidget);

    // [_LabelOption].
    expect(find.widgetWithText(MyoroInput, 'Label text'), findsOneWidget);

    // [_LabelTextStyleOption].
    expect(
      find.widgetWithText(MyoroSingularDropdown<TextStyle>, '[MyoroCheckbox.labelTextStyle]'),
      findsOneWidget,
    );
  });
}
