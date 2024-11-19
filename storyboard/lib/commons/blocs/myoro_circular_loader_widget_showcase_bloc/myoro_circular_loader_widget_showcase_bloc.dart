import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_circular_loader_widget_showcase_state.dart';
part 'myoro_circular_loader_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroCircularLoaderWidgetShowcaseState>;

/// BloC to manage all the state in [MyoroCircularLoaderWidgetShowcase].
final class MyoroCircularLoaderWidgetShowcaseBloc extends Bloc<MyoroCircularLoaderWidgetShowcaseEvent, MyoroCircularLoaderWidgetShowcaseState> {
  MyoroCircularLoaderWidgetShowcaseBloc() : super(const MyoroCircularLoaderWidgetShowcaseState()) {
    on<SetColorEvent>(_setColorEvent);
    on<SetSizeEvent>(_setSizeEvent);
  }

  void _setColorEvent(SetColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        color: event.color,
      ),
    );
  }

  void _setSizeEvent(SetSizeEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        size: event.size,
      ),
    );
  }
}
