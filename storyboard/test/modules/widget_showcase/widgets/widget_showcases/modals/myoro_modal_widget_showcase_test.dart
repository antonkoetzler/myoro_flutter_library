import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// Widget test of [MyoroModalWidgetShowcase].
void main() {
  testWidgets('MyoroModalWidgetShowcase', (WidgetTester tester) async {
    await tester.pumpWidget(
      MyoroWidgetTester(
        themeExtensionsBuilder: createThemeExtensions,
        child: BlocProvider(
          create: (_) => WidgetShowcaseBloc(),
          child: const MyoroModalWidgetShowcase(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroModalWidgetShowcase), findsOneWidget);
    expect(
      find.widgetWithText(
        MyoroIconTextHoverButton,
        'Click to launch the modal.',
      ),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(MyoroCheckbox, 'Barrier dismissable?'),
      findsOneWidget,
    );
    expect(find.text('Constraints'), findsOneWidget);
    expect(find.text('Min width'), findsOneWidget);
    expect(find.text('Max width'), findsOneWidget);
    expect(find.text('Min height'), findsOneWidget);
    expect(find.text('Max height'), findsOneWidget);
    expect(find.widgetWithText(MyoroInput, 'Title'), findsOneWidget);
    expect(
      find.widgetWithText(MyoroCheckbox, 'Show close button?'),
      findsOneWidget,
    );
  });
}
