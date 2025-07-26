import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../../widget/storyboard_widget_tester.dart';

void main() {
  testWidgets('MyoroAppWidgetShowcaseScreen', (tester) async {
    late final WidgetShowcaseScreenThemeExtension themeExtension;
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: Builder(
          builder: (context) {
            themeExtension = context.resolveThemeExtension<WidgetShowcaseScreenThemeExtension>();
            return const MyoroAppWidgetShowcaseScreen();
          },
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAppWidgetShowcaseScreen), findsOneWidget);
    await tester.tap(find.byIcon(themeExtension.widgetOptionsButtonIcon));
    await tester.pumpAndSettle();
  });
}
