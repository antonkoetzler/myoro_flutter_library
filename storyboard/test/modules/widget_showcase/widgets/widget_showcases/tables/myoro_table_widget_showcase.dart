import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroTableWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroTableWidgetShowcase()));
    await tester.pumpAndSettle();
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroTable<String>), findsOneWidget);
  });
}
