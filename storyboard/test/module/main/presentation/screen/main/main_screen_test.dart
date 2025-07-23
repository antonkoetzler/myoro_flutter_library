import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../widget/storyboard_widget_tester.dart';

void main() {
  testWidgets('MainScreen opening an accordion item.', (tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MainScreen()));
    await tester.pumpAndSettle();
    expect(find.byType(StoryboardWidgetTester), findsOneWidget);
    final item = MyoroWidgetListEnum.values.first;
    await tester.tap(find.text(item.categoryName));
    await tester.pumpAndSettle();
    await tester.tap(find.text(item.widgetNames.first));
    await tester.pumpAndSettle();
    await tester.takeException(); // Router not configured.
  });
}
