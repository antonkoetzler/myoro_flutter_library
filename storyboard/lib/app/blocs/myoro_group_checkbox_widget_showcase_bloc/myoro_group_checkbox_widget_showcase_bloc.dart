import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_checkbox_widget_showcase_state.dart';
part 'myoro_group_checkbox_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroGroupCheckboxWidgetShowcaseState>;

/// BloC to manage all the state in [MyoroGroupCheckboxWidgetShowcase].
final class MyoroGroupCheckboxWidgetShowcaseBloc extends Bloc<MyoroGroupCheckboxWidgetShowcaseEvent, MyoroGroupCheckboxWidgetShowcaseState> {
  MyoroGroupCheckboxWidgetShowcaseBloc({
    MyoroGroupCheckboxItems? checkboxes,
  }) : super(const MyoroGroupCheckboxWidgetShowcaseState()) {
    on<SetDirectionEvent>(_setDirectionEvent);
    on<SetSpacingEvent>(_setSpacingEvent);
    on<SetRunSpacingEvent>(_setRunSpacingEvent);
  }

  void _setDirectionEvent(SetDirectionEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        direction: event.direction,
      ),
    );
  }

  void _setSpacingEvent(SetSpacingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        spacing: event.spacing,
      ),
    );
  }

  void _setRunSpacingEvent(SetRunSpacingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        runSpacing: event.runSpacing,
      ),
    );
  }
}
