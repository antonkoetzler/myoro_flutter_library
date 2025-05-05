import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBackgroundColorBuilderOption', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: BlocProvider(
          create: (_) => MyoroButtonWidgetShowcaseBloc(),
          child: const MyoroButtonWidgetShowcaseBackgroundColorBuilderOption(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcaseBackgroundColorBuilderOption), findsOneWidget);
    expect(
      find.widgetWithText(MyoroTapStatusEnumWidgetShowcaseOption, 'Background color builder'),
      findsOneWidget,
    );
  });
}
