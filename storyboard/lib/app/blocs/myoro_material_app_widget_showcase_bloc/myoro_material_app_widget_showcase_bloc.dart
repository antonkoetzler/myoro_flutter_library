import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_material_app_widget_showcase_state.dart';
part 'myoro_material_app_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroMaterialAppWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroMaterialAppWidgetShowcase].
final class MyoroMaterialAppWidgetShowcaseBloc extends Bloc<MyoroMaterialAppWidgetShowcaseEvent, MyoroMaterialAppWidgetShowcaseState> {
  MyoroMaterialAppWidgetShowcaseBloc() : super(const MyoroMaterialAppWidgetShowcaseState()) {
    on<ToggleThemeModeEvent>(_toggleThemeModeEvent);
  }

  void _toggleThemeModeEvent(ToggleThemeModeEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        themeMode: state.themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
      ),
    );
  }
}
