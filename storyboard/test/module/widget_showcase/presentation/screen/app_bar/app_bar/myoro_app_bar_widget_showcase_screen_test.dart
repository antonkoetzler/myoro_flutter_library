import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../../widget/storyboard_widget_tester.dart';

void main() {
  testWidgets('MyoroAppBarWidgetShowcaseScreen', (tester) async {
    late final WidgetShowcaseScreenThemeExtension themeExtension;
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (context) {
            themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
            return const MyoroAppBarWidgetShowcaseScreen();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAppBarWidgetShowcaseScreen), findsOneWidget);
    await tester.tap(find.byIcon(themeExtension.widgetOptionsButtonIcon));
    await tester.pumpAndSettle();

    // Tap [_BorderedOption].
    await tester.tap(find.byType(Checkbox));
    await tester.pumpAndSettle();
  });
}
