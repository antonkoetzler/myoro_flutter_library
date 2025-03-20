import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroBasicDividerWidgetShowcase].
void main() {
  testWidgets('MyoroBasicDivider', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroBasicDividerWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroBasicDividerWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroBasicDivider), findsAtLeastNWidgets(1));
    expect(
      MyoroIconTextHoverButton.finder(text: 'A button', textEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroIconTextHoverButton.finder(
        text: 'Another button',
        textEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSingularDropdown.finder(
        label: '[MyoroBasicDivider.direction]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(
        label: '[MyoroBasicDivider.shortValue]',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: 'Vertical padding', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroSlider.finder(label: 'Horizontal padding', labelEnabled: true),
      findsOneWidget,
    );
  });
}
