import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroFormWidgetShowcase].
void main() {
  testWidgets('MyoroFormWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroFormWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroFormWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
  });
}
