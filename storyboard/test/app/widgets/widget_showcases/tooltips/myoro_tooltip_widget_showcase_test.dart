import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroTooltipWidgetShowcase].
void main() {
  testWidgets('MyoroTooltipWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroTooltipWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroTooltipWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.byType(MyoroTooltip), findsOneWidget);
    expect(find.text('Hover over me!'), findsOneWidget);
    expect(
      MyoroSlider.finder(label: '[MyoroTooltip.margin]', labelEnabled: true),
      findsOneWidget,
    );
    expect(
      MyoroInput.finder(label: '[MyoroTooltip.text]', labelEnabled: true),
      findsOneWidget,
    );
  });
}
