import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDatePickerInputWidgetShowcase].
void main() {
  testWidgets('MyoroDatePickerInputWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardCommonsThemeExtensions,
        child: MyoroDatePickerInputWidgetShowcase(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDatePickerInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
  });
}
