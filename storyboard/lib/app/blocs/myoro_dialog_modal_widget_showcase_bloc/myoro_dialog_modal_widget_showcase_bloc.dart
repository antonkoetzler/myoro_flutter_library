import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_state.dart';
part 'myoro_dialog_modal_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroDialogModalWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroDialogModalWidgetShowcase].
final class MyoroDialogModalWidgetShowcaseBloc extends Bloc<
    MyoroDialogModalWidgetShowcaseEvent, MyoroDialogModalWidgetShowcaseState> {
  MyoroDialogModalWidgetShowcaseBloc()
      : super(const MyoroDialogModalWidgetShowcaseState()) {
    on<SetInvertButtonsEvent>(_setInvertButtonsEvent);
    on<SetConfirmButtonTextEvent>(_setConfirmButtonTextEvent);
    on<SetTextEvent>(_setTextEvent);
    on<SetTextStyleEvent>(_setTextStyleEvent);
    on<SetChildEvent>(_setChildEvent);
  }

  void _setInvertButtonsEvent(SetInvertButtonsEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        invertButtons: event.invertButtons,
      ),
    );
  }

  void _setConfirmButtonTextEvent(
      SetConfirmButtonTextEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        confirmButtonText: event.confirmButtonText,
        confirmButtonTextEnabled: event.confirmButtonText != null,
      ),
    );
  }

  void _setTextEvent(SetTextEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        text: event.text,
        textEnabled: event.text != null,
      ),
    );
  }

  void _setTextStyleEvent(SetTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        textStyle: event.textStyle,
        textEnabled: event.textStyle != null,
      ),
    );
  }

  void _setChildEvent(SetChildEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        childEnabled: event.childEnabled,
      ),
    );
  }
}
