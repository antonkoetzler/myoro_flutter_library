import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_group_checkbox_widget_showcase_bloc/myoro_group_checkbox_widget_showcase_bloc.dart';

/// Unit test of [MyoroGroupCheckboxWidgetShowcaseBloc].
void main() {
  final Axis direction = myoroFake<Axis>();
  final double spacing = faker.randomGenerator.decimal();
  final double runSpacing = faker.randomGenerator.decimal();

  blocTest(
    'MyoroGroupCheckboxWidgetShowcaseBloc.SetDirectionEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetDirectionEvent(direction)),
    expect: () => [MyoroGroupCheckboxWidgetShowcaseState(direction: direction)],
  );

  blocTest(
    'MyoroGroupCheckboxWidgetShowcaseBloc.SetSpacingEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetSpacingEvent(spacing)),
    expect: () => [MyoroGroupCheckboxWidgetShowcaseState(spacing: spacing)],
  );

  blocTest(
    'MyoroGroupCheckboxWidgetShowcaseBloc.SetRunSpacingEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetRunSpacingEvent(runSpacing)),
    expect:
        () => [MyoroGroupCheckboxWidgetShowcaseState(runSpacing: runSpacing)],
  );
}
