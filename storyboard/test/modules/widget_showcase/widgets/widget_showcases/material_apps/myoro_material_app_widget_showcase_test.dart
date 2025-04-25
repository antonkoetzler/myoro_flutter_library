import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroMaterialAppWidgetShowcase].
void main() {
  testWidgets('MyoroMaterialAppWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroMaterialAppWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMaterialAppWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroMaterialApp), findsAtLeastNWidgets(1));
  });
}
