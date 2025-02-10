import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroCheckboxWidgetShowcase].
void main() {
  testWidgets('MyoroCheckboxWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroCheckboxWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroCheckboxWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroCheckbox), findsOneWidget);

    // [_LabelOption].
    expect(MyoroInput.finder(label: 'Label text', labelEnabled: true), findsOneWidget);

    // [_LabelTextStyleOption].
    expect(MyoroSingularDropdown.finder(label: '[MyoroCheckbox.labelTextStyle]', labelEnabled: true), findsOneWidget);
  });
}
