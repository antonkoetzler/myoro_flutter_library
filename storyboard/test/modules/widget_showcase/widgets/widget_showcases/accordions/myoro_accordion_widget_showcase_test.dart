import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroAccordionWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(child: MyoroAccordionWidgetShowcase()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAccordionWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroAccordion), findsOneWidget);
  });
}
