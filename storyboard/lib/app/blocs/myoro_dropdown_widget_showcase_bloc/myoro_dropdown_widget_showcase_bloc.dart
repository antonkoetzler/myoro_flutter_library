import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_state.dart';
part 'myoro_dropdown_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroDropdownWidgetShowcaseState>;

/// BLoC to manage the state of [MyoroDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcaseBloc extends Bloc<MyoroDropdownWidgetShowcaseEvent, MyoroDropdownWidgetShowcaseState> {
  MyoroDropdownWidgetShowcaseBloc() : super(const MyoroDropdownWidgetShowcaseState()) {
    on<SetLabelEvent>(_setLabelEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
    on<SetEnabledEvent>(_setEnabledEvent);
    on<SetEnableMultiSelectionEvent>(_setEnableMultiSelectionEvent);
    on<SetShowClearTextButtonEvent>(_setShowClearTextButtonEvent);
    on<SetSearchCallbackEnabledEvent>(_setSearchCallbackEnabledEvent);
    on<SetCheckboxOnChangedEnabledEvent>(_setCheckboxOnChangedEnabledEvent);
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        label: event.label,
        labelEnabled: event.label != null,
      ),
    );
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        labelTextStyle: event.textStyle,
        labelTextStyleEnabled: event.textStyle != null,
      ),
    );
  }

  void _setEnabledEvent(SetEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        enabled: event.enabled,
      ),
    );
  }

  void _setEnableMultiSelectionEvent(SetEnableMultiSelectionEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        enableMultiSelection: event.enabled,
      ),
    );
  }

  void _setShowClearTextButtonEvent(SetShowClearTextButtonEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        showClearTextButton: event.enabled,
      ),
    );
  }

  void _setSearchCallbackEnabledEvent(SetSearchCallbackEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        searchCallbackEnabled: event.enabled,
      ),
    );
  }

  void _setCheckboxOnChangedEnabledEvent(SetCheckboxOnChangedEnabledEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        checkboxOnChangedEnabled: event.enabled,
      ),
    );
  }
}
