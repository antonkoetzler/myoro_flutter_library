import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/modules/widget_showcase/blocs/myoro_app_widget_showcase_bloc/myoro_app_widget_showcase_bloc.dart';

/// Unit test of [MyoroAppWidgetShowcaseBloc].
void main() {
  blocTest(
    'MyoroAppWidgetShowcaseBloc.ToggleThemeModeEvent',
    build: () => MyoroAppWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const ToggleThemeModeEvent()),
    expect:
        () => [
          MyoroAppWidgetShowcaseState(
            themeMode:
                const MyoroAppWidgetShowcaseState().themeMode == ThemeMode.dark
                    ? ThemeMode.light
                    : ThemeMode.dark,
          ),
        ],
  );
}
