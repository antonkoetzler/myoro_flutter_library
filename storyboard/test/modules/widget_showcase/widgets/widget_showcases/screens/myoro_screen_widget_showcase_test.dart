import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroScreenWidgetShowcase].
void main() {
  testWidgets('MyoroScreenWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroScreenWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroScreenWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroScreen), findsAtLeastNWidgets(1));
  });
}
