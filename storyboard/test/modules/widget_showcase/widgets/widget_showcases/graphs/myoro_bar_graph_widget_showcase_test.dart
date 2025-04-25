import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroBarGraphWidgetShowcase].
void main() {
  testWidgets('MyoroBarGraphWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroBarGraphWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroBarGraphWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroBarGraph), findsOneWidget);
    expect(find.widgetWithText(MyoroCheckbox, '[MyoroBarGraph.sorted]'), findsOneWidget);
  });
}
