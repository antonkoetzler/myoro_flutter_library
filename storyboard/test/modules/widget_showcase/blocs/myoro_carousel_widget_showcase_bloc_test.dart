import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_carousel_widget_showcase_bloc/myoro_carousel_widget_showcase_bloc.dart';

/// Unit test of [MyoroCarouselWidgetShowcaseBloc].
void main() {
  final direction = Axis.values[faker.randomGenerator.integer(Axis.values.length)];
  final displayTraversalButtons = faker.randomGenerator.boolean();
  final autoplay = faker.randomGenerator.boolean();
  const autoplayIntervalDuration = Duration();

  blocTest(
    'MyoroCarouselWidgetShowcaseBloc.SetDirectionEvent',
    build: () => MyoroCarouselWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetDirectionEvent(direction)),
    expect: () => [MyoroCarouselWidgetShowcaseState(direction: direction)],
  );

  blocTest(
    'MyoroCarouselWidgetShowcaseBloc.SetDisplayTraversalButtonsEvent',
    build: () => MyoroCarouselWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetDisplayTraversalButtonsEvent(displayTraversalButtons)),
    expect:
        () => [MyoroCarouselWidgetShowcaseState(displayTraversalButtons: displayTraversalButtons)],
  );

  blocTest(
    'MyoroCarouselWidgetShowcaseBloc.SetAutoplayEvent',
    build: () => MyoroCarouselWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetAutoplayEvent(autoplay)),
    expect: () => [MyoroCarouselWidgetShowcaseState(autoplay: autoplay)],
  );

  blocTest(
    'MyoroCarouselWidgetShowcaseBloc.SetAutoplayIntervalDurationEvent',
    build: () => MyoroCarouselWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const SetAutoplayIntervalDurationEvent(autoplayIntervalDuration)),
    expect:
        () => const [
          MyoroCarouselWidgetShowcaseState(autoplayIntervalDuration: autoplayIntervalDuration),
        ],
  );
}
