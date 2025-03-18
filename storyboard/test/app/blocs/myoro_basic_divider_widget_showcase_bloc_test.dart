import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/app/blocs/myoro_basic_divider_widget_showcase_bloc/myoro_basic_divider_widget_showcase_bloc.dart';

/// Unit test of [MyoroBasicDividerWidgetShowcaseBloc].
void main() {
  final double shortValue = faker.randomGenerator.decimal();
  final double newShortValue = faker.randomGenerator.decimal();
  final Axis direction =
      Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final double padding = faker.randomGenerator.decimal();

  blocTest(
    'MyoroBasicDividerWidgetShowcaseBloc.SetDirectionEvent',
    build: () => MyoroBasicDividerWidgetShowcaseBloc(shortValue: shortValue),
    act: (bloc) => bloc.add(SetDirectionEvent(direction)),
    expect: () => [
      MyoroBasicDividerWidgetShowcaseState(
        shortValue: shortValue,
        direction: direction,
      ),
    ],
  );

  blocTest(
    'MyoroBasicDividerWidgetShowcaseBloc.SetShortValueEvent',
    build: () => MyoroBasicDividerWidgetShowcaseBloc(shortValue: shortValue),
    act: (bloc) => bloc.add(SetShortValueEvent(newShortValue)),
    expect: () => [
      MyoroBasicDividerWidgetShowcaseState(
        shortValue: newShortValue,
      ),
    ],
  );

  blocTest(
    'MyoroBasicDividerWidgetShowcaseBloc.SetPaddingEvent',
    build: () => MyoroBasicDividerWidgetShowcaseBloc(shortValue: shortValue),
    act: (bloc) => bloc
      ..add(SetPaddingEvent(Axis.vertical, padding))
      ..add(SetPaddingEvent(Axis.horizontal, padding)),
    expect: () => [
      MyoroBasicDividerWidgetShowcaseState(
        shortValue: shortValue,
        verticalPadding: padding,
      ),
      MyoroBasicDividerWidgetShowcaseState(
        shortValue: shortValue,
        horizontalPadding: padding,
      ),
    ],
  );
}
