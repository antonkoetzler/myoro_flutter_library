import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroMenuWidgetShowcase].
void main() {
  testWidgets('MyoroMenuWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroMenuWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroMenuWidgetShowcase), findsOneWidget);
    expect(find.byType(WidgetShowcase), findsOneWidget);
    expect(find.text('[MyoroMenu.constraints]'), findsOneWidget);
    expect(
      MyoroCheckbox.finder(
        label: '[MyoroMenu.searchCallback] not null?',
        labelEnabled: true,
      ),
      findsOneWidget,
    );
  });
}
