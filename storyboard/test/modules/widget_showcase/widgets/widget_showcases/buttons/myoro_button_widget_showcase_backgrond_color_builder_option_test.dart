import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBackgroundColorBuilderOption', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(
        child: MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
      ),
    );
    await tester.pumpAndSettle();

    expect(
      find.byType(MyoroButtonWidgetShowcaseBackgroundColorBuilderOption),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(
        MyoroTapStatusEnumWidgetShowcaseOption,
        'Background color builder',
      ),
      findsOneWidget,
    );
  });
}
