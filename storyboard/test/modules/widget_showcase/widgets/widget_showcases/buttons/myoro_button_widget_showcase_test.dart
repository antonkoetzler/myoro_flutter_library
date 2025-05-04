import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(child: MyoroButtonWidgetShowcase()),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroButtonWidgetShowcaseCursorOption), findsOneWidget);
    expect(
      find.byType(MyoroButtonWidgetShowcaseBorderRadiusOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseBackgroundColorBuilderOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseBorderBuilderOption),
      findsOneWidget,
    );
    expect(
      find.byType(MyoroButtonWidgetShowcaseOnTapDownOption),
      findsOneWidget,
    );
    expect(find.byType(MyoroButtonWidgetShowcaseOnTapUpOption), findsOneWidget);
    expect(find.byType(MyoroButton), findsOneWidget);
  });
}
