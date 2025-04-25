import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroMenuWidgetShowcase].
void main() {
  testWidgets('MyoroMenuWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(const StoryboardWidgetTester(child: MyoroMenuWidgetShowcase()));
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMenuWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.text('[MyoroMenu.constraints]'), findsOneWidget);
    expect(
      find.widgetWithText(MyoroCheckbox, '[MyoroMenu.searchCallback] not null?'),
      findsOneWidget,
    );
  });
}
