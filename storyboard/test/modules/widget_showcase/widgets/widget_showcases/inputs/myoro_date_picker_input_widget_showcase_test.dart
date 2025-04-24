import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroDatePickerInputWidgetShowcase].
void main() {
  testWidgets('MyoroDatePickerInputWidgetShowcase', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroDatePickerInputWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroDatePickerInputWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
  });
}
