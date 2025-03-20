import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_circular_loader_widget_showcase_bloc/myoro_circular_loader_widget_showcase_bloc.dart';

/// Unit test of [MyoroCircularLoaderWidgetShowcaseBloc].
void main() {
  final Color color =
      kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];
  final double size1 = faker.randomGenerator.decimal();
  final double size2 = faker.randomGenerator.decimal();

  blocTest(
    'MyoroCircularLoaderWidgetShowcaseBloc.SetColorEvent',
    build: () => MyoroCircularLoaderWidgetShowcaseBloc(size: size1),
    act: (bloc) => bloc.add(SetColorEvent(color)),
    expect: () => [
      MyoroCircularLoaderWidgetShowcaseState(color: color, size: size1),
    ],
  );

  blocTest(
    'MyoroCircularLoaderWidgetShowcaseBloc.SetSizeEvent',
    build: () => MyoroCircularLoaderWidgetShowcaseBloc(size: size1),
    act: (bloc) => bloc.add(SetSizeEvent(size2)),
    expect: () => [MyoroCircularLoaderWidgetShowcaseState(size: size2)],
  );
}
