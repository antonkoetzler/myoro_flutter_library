import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroLayoutBuilderWidgetShowcase].
void main() {
  testWidgets('MyoroLayoutBuilderWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createStoryboardThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroLayoutBuilderWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroLayoutBuilder), findsOneWidget);
    expect(
      find.text(
        'A replacement for Flutter\'s [LayoutBuilder]. [MyoroLayoutBuilder] '
        'allows the developer to use [IntrinsicWidth] within the scope of, in '
        'this case, [MyoroLayoutBuilder].',
      ),
      findsOneWidget,
    );
  });
}
