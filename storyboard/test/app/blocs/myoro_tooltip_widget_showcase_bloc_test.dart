import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:storyboard/app/blocs/myoro_tooltip_widget_showcase_bloc/myoro_tooltip_widget_showcase_bloc.dart';

/// Unit test of [MyoroTooltipWidgetShowcaseBloc].
void main() {
  final double margin = faker.randomGenerator.decimal();
  final String text = faker.randomGenerator.string(100, min: 0);

  blocTest(
    'MyoroTooltipWidgetShowcaseBloc.SetMarginEvent',
    build: () => MyoroTooltipWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetMarginEvent(margin)),
    expect: () => [MyoroTooltipWidgetShowcaseState(margin: margin)],
  );

  blocTest(
    'MyoroTooltipWidgetShowcaseBloc.SetTextEvent',
    build: () => MyoroTooltipWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTextEvent(text)),
    expect: () => [MyoroTooltipWidgetShowcaseState(text: text)],
  );
}
