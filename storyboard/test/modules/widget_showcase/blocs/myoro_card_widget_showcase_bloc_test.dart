import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_card_widget_showcase_bloc/myoro_card_widget_showcase_bloc.dart';

/// Unit test of [MyoroCardWidgetShowcaseBloc].
void main() {
  final String title = faker.lorem.word();
  const TextStyle textStyle = TextStyle();
  final double padding = faker.randomGenerator.decimal();
  final MyoroCardWidgetShowcaseBlocDimension width = (
    faker.randomGenerator.boolean(),
    faker.randomGenerator.decimal(),
  );
  final MyoroCardWidgetShowcaseBlocDimension height = (
    faker.randomGenerator.boolean(),
    faker.randomGenerator.decimal(),
  );

  blocTest(
    'MyoroCardWidgetShowcase.SetTitleEvent',
    build: () => MyoroCardWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTitleEvent(title)),
    expect: () => [MyoroCardWidgetShowcaseState(title: title)],
  );

  blocTest(
    'MyoroCardWidgetShowcaseBloc.SetTitleTextStyle',
    build: () => MyoroCardWidgetShowcaseBloc(),
    act:
        (bloc) =>
            bloc
              ..add(const SetTitleTextStyleEvent(textStyle))
              ..add(const SetTitleTextStyleEvent()),
    expect:
        () => const [
          MyoroCardWidgetShowcaseState(titleTextStyle: textStyle),
          MyoroCardWidgetShowcaseState(),
        ],
  );

  blocTest(
    'MyoroCardWidgetShowcaseBloc.SetPaddingEvent',
    build: () => MyoroCardWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetPaddingEvent(padding)),
    expect: () => [MyoroCardWidgetShowcaseState(padding: padding)],
  );

  blocTest(
    'MyoroCardWidgetShowcaseBloc.SetWidthEvent',
    build: () => MyoroCardWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetWidthEvent(width)),
    expect: () => [MyoroCardWidgetShowcaseState(width: width)],
  );

  blocTest(
    'MyoroCardWidgetShowcaseBloc.SetHeightEvent',
    build: () => MyoroCardWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetHeightEvent(height)),
    expect: () => [MyoroCardWidgetShowcaseState(height: height)],
  );
}
