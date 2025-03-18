import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroSnackBarWidgetShowcase].
void main() {
  testWidgets('MyoroSnackBarWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroSnackBarWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroSnackBarWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(
      MyoroIconTextHoverButton.finder(
          text: 'Click to launch the snack bar.', textEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder<MyoroSnackBarTypeEnum>(
        label: '[MyoroSnackBar.snackBarType]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
          label: '[MyoroSnackBar.showCloseButton]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(label: '[MyoroSnackBar.message]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroCheckbox.finder(
          label: '[MyoroSnackBar.child] enabled?', labelEnabled: true),
      findsOneWidget,
    );
  });
}
