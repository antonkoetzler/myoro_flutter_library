import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseCursorOption', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(
        child: MyoroButtonWidgetShowcaseCursorOption(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcaseCursorOption), findsOneWidget);
    expect(
      find.widgetWithText(
        MouseCursorWidgetShowcaseOption,
        '[MyoroButtonConfiguration.cursor]',
      ),
      findsOneWidget,
    );
  });
}
