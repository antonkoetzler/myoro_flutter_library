import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_button_widget_showcase_bloc/myoro_button_widget_showcase_bloc.dart';
import 'package:storyboard/storyboard.dart';

void main() {
  testWidgets('MyoroButtonWidgetShowcaseBorderBuilderOption', (WidgetTester tester) async {
    await tester.pumpWidget(
      StoryboardWidgetTester(
        child: BlocProvider(
          create:
              (_) => MyoroButtonWidgetShowcaseBloc()..add(const SetBorderBuilderEnabledEvent(true)),
          child: const MyoroButtonWidgetShowcaseBorderBuilderOption(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.byType(MyoroButtonWidgetShowcaseBorderBuilderOption), findsOneWidget);
    expect(
      find.widgetWithText(MyoroCheckbox, '[MyoroButtonConfiguration.borderBuilder]'),
      findsOneWidget,
    );
    expect(find.widgetWithText(MyoroSlider, 'Border width'), findsOneWidget);
    expect(find.widgetWithText(ColorWidgetShowcaseOption, 'Idle color'), findsOneWidget);
    expect(find.widgetWithText(ColorWidgetShowcaseOption, 'Hover color'), findsOneWidget);
    expect(find.widgetWithText(ColorWidgetShowcaseOption, 'Tap color'), findsOneWidget);
  });
}
