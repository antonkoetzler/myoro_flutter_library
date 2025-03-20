import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_radio_widget_showcase_state.dart';
part 'myoro_group_radio_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroGroupRadioWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroGroupRadioWidgetShowcase].
final class MyoroGroupRadioWidgetShowcaseBloc extends Bloc<
    MyoroGroupRadioWidgetShowcaseEvent, MyoroGroupRadioWidgetShowcaseState> {
  MyoroGroupRadioWidgetShowcaseBloc({
    required Axis direction,
    required double spacing,
    required double runSpacing,
  }) : super(
          MyoroGroupRadioWidgetShowcaseState(
            direction: direction,
            spacing: spacing,
            runSpacing: runSpacing,
          ),
        ) {
    on<SetDirectionEvent>(_setDirectionEvent);
    on<SetSpacingEvent>(_setSpacingEvent);
    on<SetRunSpacingEvent>(_setRunSpacingEvent);
  }

  void _setDirectionEvent(SetDirectionEvent event, _Emitter emit) {
    emit(state.copyWith(direction: event.direction));
  }

  void _setSpacingEvent(SetSpacingEvent event, _Emitter emit) {
    emit(state.copyWith(spacing: event.spacing));
  }

  void _setRunSpacingEvent(SetRunSpacingEvent event, _Emitter emit) {
    emit(state.copyWith(runSpacing: event.runSpacing));
  }
}
