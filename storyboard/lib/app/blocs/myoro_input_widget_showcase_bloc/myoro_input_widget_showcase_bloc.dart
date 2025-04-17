import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_input_widget_showcase_state.dart';
part 'myoro_input_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroInputWidgetShowcaseState>;

/// BLoC to manage the state in [MyoroInputWidgetShowcase].
final class MyoroInputWidgetShowcaseBloc extends Bloc<MyoroInputWidgetShowcaseEvent, MyoroInputWidgetShowcaseState> {
  MyoroInputWidgetShowcaseBloc() : super(const MyoroInputWidgetShowcaseState()) {
    on<SetFormatterEvent>(_setFormatterEvent);
    on<SetInputStyleEvent>(_setInputStyleEvent);
    on<SetTextAlignEvent>(_setTextAlignEvent);
    on<SetInputTextStyleEvent>(_setInputTextStyleEvent);
    on<SetLabelEvent>(_setLabelEvent);
    on<SetPlaceholderEvent>(_setPlaceholderEvent);
    on<SetLabelTextStyleEvent>(_setLabelTextStyleEvent);
    on<SetSuffixEnabledEvent>(_setSuffixEnabledEvent);
    on<SetEnabledEvent>(_setEnabledEvent);
    on<SetReadOnlyEvent>(_setReadOnlyEvent);
    on<SetShowClearTextButtonEvent>(_setShowClearTextButtonEvent);
    on<SetCheckboxOnChangedEnabledEvent>(_setCheckboxOnChangedEnabledEvent);
  }

  void _setFormatterEvent(SetFormatterEvent event, _Emitter emit) {
    emit(state.copyWith(typeEnum: event.typeEnum));
  }

  void _setInputStyleEvent(SetInputStyleEvent event, _Emitter emit) {
    emit(state.copyWith(inputStyle: event.inputStyle));
  }

  void _setTextAlignEvent(SetTextAlignEvent event, _Emitter emit) {
    emit(state.copyWith(textAlign: event.textAlign));
  }

  void _setInputTextStyleEvent(SetInputTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(inputTextStyle: event.inputTextStyle, inputTextStyleProvided: event.inputTextStyle != null));
  }

  void _setLabelEvent(SetLabelEvent event, _Emitter emit) {
    emit(state.copyWith(label: event.label, labelProvided: event.label != null));
  }

  void _setPlaceholderEvent(SetPlaceholderEvent event, _Emitter emit) {
    emit(state.copyWith(placeholder: event.placeholder, placeholderProvided: event.placeholder != null));
  }

  void _setLabelTextStyleEvent(SetLabelTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(labelTextStyle: event.labelTextStyle, labelTextStyleProvided: event.labelTextStyle != null));
  }

  void _setSuffixEnabledEvent(SetSuffixEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(suffixProvided: event.enabled));
  }

  void _setEnabledEvent(SetEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(enabled: event.enabled));
  }

  void _setReadOnlyEvent(SetReadOnlyEvent event, _Emitter emit) {
    emit(state.copyWith(readOnly: event.enabled));
  }

  void _setShowClearTextButtonEvent(SetShowClearTextButtonEvent event, _Emitter emit) {
    emit(state.copyWith(showClearTextButton: event.enabled));
  }

  void _setCheckboxOnChangedEnabledEvent(SetCheckboxOnChangedEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(checkboxOnChangedProvided: event.enabled));
  }
}
