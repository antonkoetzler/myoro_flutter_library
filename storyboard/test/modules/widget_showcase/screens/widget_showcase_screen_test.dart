import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  final String widgetName = StoryboardWidgetListingEnum.fake().widgetNames.first;

  testWidgets('WidgetShowcaseScreen', (WidgetTester tester) async {
    await tester.pumpWidget(StoryboardWidgetTester(child: WidgetShowcaseScreen(widgetName)));
    await tester.pumpAndSettle();
    expect(find.widgetWithText(StoryboardScreen, widgetName), findsOneWidget);
  });
}
