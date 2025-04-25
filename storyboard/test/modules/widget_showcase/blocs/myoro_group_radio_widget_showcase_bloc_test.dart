import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_group_radio_widget_showcase_bloc/myoro_group_radio_widget_showcase_bloc.dart';

/// Unit test of [MyoroGroupRadioWidgetShowcaseBloc].
void main() {
  final Axis direction1 = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final Axis direction2 = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final double spacing1 = faker.randomGenerator.decimal();
  final double spacing2 = faker.randomGenerator.decimal();
  final double runSpacing1 = faker.randomGenerator.decimal();
  final double runSpacing2 = faker.randomGenerator.decimal();

  MyoroGroupRadioWidgetShowcaseBloc createBloc() {
    return MyoroGroupRadioWidgetShowcaseBloc(
      direction: direction1,
      spacing: spacing1,
      runSpacing: runSpacing1,
    );
  }

  final defaultState = MyoroGroupRadioWidgetShowcaseState(
    direction: direction1,
    spacing: spacing1,
    runSpacing: runSpacing1,
  );

  blocTest(
    'MyoroGroupRadioWidgetShowcaseBloc.SetDirectionEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetDirectionEvent(direction2)),
    expect: () => [defaultState.copyWith(direction: direction2)],
  );

  blocTest(
    'MyoroGroupRadioWidgetShowcaseBloc.SetSpacingEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetSpacingEvent(spacing2)),
    expect: () => [defaultState.copyWith(spacing: spacing2)],
  );

  blocTest(
    'MyoroGroupRadioWidgetShowcaseBloc.SetRunSpacingEvent',
    build: createBloc,
    act: (bloc) => bloc.add(SetRunSpacingEvent(runSpacing2)),
    expect: () => [defaultState.copyWith(runSpacing: runSpacing2)],
  );
}
