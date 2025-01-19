import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_scrollable_widget_showcase_bloc/myoro_scrollable_widget_showcase_bloc.dart';

/// Unit test of [MyoroScrollableWidgetShowcaseBloc].
void main() {
  final MyoroScrollableEnum scrollableType = MyoroScrollableEnum.fake();
  final Axis direction = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final double padding = faker.randomGenerator.decimal();

  blocTest(
    'MyoroScrollableWidgetShowcaseBloc.SetScrollableTypeEvent',
    build: () => MyoroScrollableWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetScrollableTypeEvent(scrollableType)),
    expect: () => [MyoroScrollableWidgetShowcaseState(scrollableType: scrollableType)],
  );

  blocTest(
    'MyoroScrollableWidgetShowcaseBloc.SetDirectionEvent',
    build: () => MyoroScrollableWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetDirectionEvent(direction)),
    expect: () => [MyoroScrollableWidgetShowcaseState(direction: direction)],
  );

  blocTest(
    'MyoroScrollableWidgetShowcaseBloc.SetPaddingEvent',
    build: () => MyoroScrollableWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetPaddingEvent(padding)),
    expect: () => [MyoroScrollableWidgetShowcaseState(padding: padding)],
  );
}
