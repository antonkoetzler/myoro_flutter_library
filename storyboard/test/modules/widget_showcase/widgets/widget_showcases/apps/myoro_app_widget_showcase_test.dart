import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroAppWidgetShowcase].
void main() {
  testWidgets('MyoroAppWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroAppWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroAppWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroApp), findsAtLeastNWidgets(1));
  });
}
