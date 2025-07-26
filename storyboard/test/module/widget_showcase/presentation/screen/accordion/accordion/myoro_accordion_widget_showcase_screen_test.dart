import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

import '../../../../../../widget/storyboard_widget_tester.dart';

void main() {
  testWidgets('MyoroAccordionWidgetShowcaseScreen', (tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroAccordionWidgetShowcaseScreen()));
    await tester.pumpAndSettle();
    expect(find.byType(MyoroAccordionWidgetShowcaseScreen), findsOneWidget);
  });
}
