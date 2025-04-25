import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDatePickerInputWidgetShowcase].
void main() {
  testWidgets('MyoroDatePickerInputWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const StoryboardWidgetTester(child: MyoroDatePickerInputWidgetShowcase()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDatePickerInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
  });
}
