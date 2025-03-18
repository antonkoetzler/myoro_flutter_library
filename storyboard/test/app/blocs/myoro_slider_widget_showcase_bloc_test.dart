import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_slider_widget_showcase_bloc/myoro_slider_widget_showcase_bloc.dart';

/// Unit test of [MyoroSliderWidgetShowcaseBloc].
void main() {
  final String label = faker.lorem.word();
  late final TextStyle? labelTextStyle;
  final double width1 = faker.randomGenerator.decimal();
  final double width2 = faker.randomGenerator.decimal();
  final bool currentValueIndicatorTextBuilderEnabled =
      faker.randomGenerator.boolean();
  final bool maxValueIndicatorTextBuilderEnabled =
      faker.randomGenerator.boolean();
  final bool footerIndicatorTextBuilderEnabled =
      faker.randomGenerator.boolean();

  MyoroSliderWidgetShowcaseBloc createBloc() =>
      MyoroSliderWidgetShowcaseBloc(width: width1);
  final defaultState = MyoroSliderWidgetShowcaseState(width: width1);

  setUpAll(() {
    MyoroTypographyTheme.textTheme =
        createMyoroTextTheme(faker.randomGenerator.boolean());
    labelTextStyle = faker.randomGenerator.boolean()
        ? MyoroTypographyTheme.instance.randomTextStyle
        : null;
  });

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetLabelEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetLabelEvent(label)),
    expect: () => [defaultState.copyWith(label: label)],
  );

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetLabelTextStyleEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetLabelTextStyleEvent(labelTextStyle)),
    expect: () => [defaultState.copyWith(labelTextStyle: labelTextStyle)],
  );

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetWidthEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetWidthEvent(width2)),
    expect: () => [defaultState.copyWith(width: width2)],
  );

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetCurrentValueIndicatorTextBuilderEnabledEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetCurrentValueIndicatorTextBuilderEnabledEvent(
        currentValueIndicatorTextBuilderEnabled)),
    expect: () => [
      defaultState.copyWith(
          currentValueIndicatorTextBuilderEnabled:
              currentValueIndicatorTextBuilderEnabled)
    ],
  );

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetMaxValueIndicatorTextBuilderEnabledEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetMaxValueIndicatorTextBuilderEnabledEvent(
        maxValueIndicatorTextBuilderEnabled)),
    expect: () => [
      defaultState.copyWith(
          maxValueIndicatorTextBuilderEnabled:
              maxValueIndicatorTextBuilderEnabled)
    ],
  );

  blocTest(
    'MyoroSliderWidgetShowcaseBloc.SetFooterIndicatorTextBuilderEnabledEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetFooterIndicatorTextBuilderEnabledEvent(
        footerIndicatorTextBuilderEnabled)),
    expect: () => [
      defaultState.copyWith(
          footerIndicatorTextBuilderEnabled: footerIndicatorTextBuilderEnabled)
    ],
  );
}
