import 'package:bloc_test/bloc_test.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/app/blocs/myoro_drawer_widget_showcase_bloc/myoro_drawer_widget_showcase_bloc.dart';

/// Unit test of [MyoroDrawerWidgetShowcaseBloc].
void main() {
  final String? title = faker.randomGenerator.boolean() ? faker.lorem.word() : null;
  late final TextStyle? titleTextStyle;
  final bool showCloseButton = faker.randomGenerator.boolean();
  final bool barrierDismissable = faker.randomGenerator.boolean();

  setUpAll(() {
    MyoroTypographyTheme.textTheme = createMyoroTextTheme(faker.randomGenerator.boolean());
    titleTextStyle = MyoroTypographyTheme.instance.randomTextStyle;
  });

  blocTest(
    'MyoroDrawerWidgetShowcaseBloc.SetTitleEvent',
    build: () => MyoroDrawerWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTitleEvent(title)),
    expect: () => [MyoroDrawerWidgetShowcaseState(title: title)],
  );

  blocTest(
    'MyoroDrawerWidgetShowcaseBloc.SetTitleTextStyleEvent',
    build: () => MyoroDrawerWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetTitleTextStyleEvent(titleTextStyle)),
    expect: () => [MyoroDrawerWidgetShowcaseState(titleTextStyle: titleTextStyle)],
  );

  blocTest(
    'MyoroDrawerWidgetShowcaseBloc.SetShowCloseButtonEvent',
    build: () => MyoroDrawerWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetShowCloseButtonEvent(showCloseButton)),
    expect: () => [MyoroDrawerWidgetShowcaseState(showCloseButton: showCloseButton)],
  );

  blocTest(
    'MyoroDrawerWidgetShowcaseBloc.SetBarrierDismissableEvent',
    build: () => MyoroDrawerWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(SetBarrierDismissableEvent(barrierDismissable)),
    expect: () => [MyoroDrawerWidgetShowcaseState(barrierDismissable: barrierDismissable)],
  );
}
