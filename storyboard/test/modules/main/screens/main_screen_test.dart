import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MainScreen', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MainScreen()));
    await tester.pumpAndSettle();

    expect(find.byType(MainScreen), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (Widget w) =>
            w is StoryboardScreen &&
            w.headerTitleText == 'MFL Storyboard' &&
            w.headerSubtitleText ==
                'Program to visualize and create MFL widgets.',
      ),
      findsOneWidget,
    );
    expect(find.byType(MyoroAccordion), findsOneWidget);
  });
}
