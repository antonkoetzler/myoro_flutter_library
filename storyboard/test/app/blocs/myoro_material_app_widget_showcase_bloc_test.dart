import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/app/blocs/myoro_material_app_widget_showcase_bloc/myoro_material_app_widget_showcase_bloc.dart';

/// Unit test of [MyoroMaterialAppWidgetShowcaseBloc].
void main() {
  blocTest(
    'MyoroMaterialAppWidgetShowcaseBloc.ToggleThemeModeEvent',
    build: () => MyoroMaterialAppWidgetShowcaseBloc(),
    act: (bloc) => bloc.add(const ToggleThemeModeEvent()),
    expect: () => [
      MyoroMaterialAppWidgetShowcaseState(
        themeMode: const MyoroMaterialAppWidgetShowcaseState().themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
      ),
    ],
  );
}
