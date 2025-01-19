import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_group_checkbox_widget_showcase_bloc/myoro_group_checkbox_widget_showcase_bloc.dart';

/// Unit test of [MyoroGroupCheckboxWidgetShowcaseBloc].
void main() {
  final Axis direction = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final double spacing = faker.randomGenerator.decimal();
  final double runSpacing = faker.randomGenerator.decimal();
  final MyoroGroupCheckboxItems checkboxes1 = {
    for (int i = 0; i < faker.randomGenerator.integer(100); i++) ...{
      '$i': faker.randomGenerator.boolean(),
    },
  };
  final MyoroGroupCheckboxItems checkboxes2 = {
    for (int i = 0; i < faker.randomGenerator.integer(100); i++) ...{
      '$i': faker.randomGenerator.boolean(),
    },
  };

  blocTest(
    'MyoroGroupCheckboxWidget.SetDirectionEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(checkboxes: checkboxes1),
    act: (bloc) => bloc.add(SetDirectionEvent(direction)),
    expect: () => [
      MyoroGroupCheckboxWidgetShowcaseState(
        direction: direction,
        checkboxes: checkboxes1,
      ),
    ],
  );

  blocTest(
    'MyoroGroupCheckboxWidget.SetSpacingEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(checkboxes: checkboxes1),
    act: (bloc) => bloc.add(SetSpacingEvent(spacing)),
    expect: () => [
      MyoroGroupCheckboxWidgetShowcaseState(
        spacing: spacing,
        checkboxes: checkboxes1,
      ),
    ],
  );

  blocTest(
    'MyoroGroupCheckboxWidget.SetRunSpacingEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(checkboxes: checkboxes1),
    act: (bloc) => bloc.add(SetRunSpacingEvent(runSpacing)),
    expect: () => [
      MyoroGroupCheckboxWidgetShowcaseState(
        runSpacing: runSpacing,
        checkboxes: checkboxes1,
      ),
    ],
  );

  blocTest(
    'MyoroGroupCheckboxWidget.SetItemsEvent',
    build: () => MyoroGroupCheckboxWidgetShowcaseBloc(checkboxes: checkboxes1),
    act: (bloc) => bloc.add(SetItemsEvent(checkboxes2)),
    expect: () => [
      MyoroGroupCheckboxWidgetShowcaseState(
        checkboxes: checkboxes2,
      ),
    ],
  );
}
