import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menu_widget_showcase_state.dart';
part 'myoro_menu_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroMenuWidgetShowcaseState>;

/// BloC to manage all of the options in [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseBloc
    extends Bloc<MyoroMenuWidgetShowcaseEvent, MyoroMenuWidgetShowcaseState> {
  MyoroMenuWidgetShowcaseBloc() : super(const MyoroMenuWidgetShowcaseState()) {
    on<SetMinWidthEvent>(_setMinWidthEvent);
    on<SetMaxWidthEvent>(_setMaxWidthEvent);
    on<SetMinHeightEvent>(_setMinHeightEvent);
    on<SetMaxHeightEvent>(_setMaxHeightEvent);
  }

  void _setMinWidthEvent(SetMinWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        minWidth: event.minWidth,
        minWidthProvided: event.minWidth != null,
      ),
    );
  }

  void _setMaxWidthEvent(SetMaxWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        maxWidth: event.maxWidth,
        maxWidthProvided: event.maxWidth != null,
      ),
    );
  }

  void _setMinHeightEvent(SetMinHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        minHeight: event.minHeight,
        minHeightProvided: event.minHeight != null,
      ),
    );
  }

  void _setMaxHeightEvent(SetMaxHeightEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        maxHeight: event.maxHeight,
        maxHeightProvided: event.maxHeight != null,
      ),
    );
  }
}
