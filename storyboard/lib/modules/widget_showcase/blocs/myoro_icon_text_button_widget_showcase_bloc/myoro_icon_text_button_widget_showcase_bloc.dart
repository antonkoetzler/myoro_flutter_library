import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_widget_showcase_state.dart';
part 'myoro_icon_text_button_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroIconTextButtonWidgetShowcaseState>;

/// [Bloc] of [MyoroIconTextButtonWidgetShowcase].
final class MyoroIconTextButtonWidgetShowcaseBloc
    extends Bloc<MyoroIconTextButtonWidgetShowcaseEvent, MyoroIconTextButtonWidgetShowcaseState> {
  MyoroIconTextButtonWidgetShowcaseBloc() : super(const MyoroIconTextButtonWidgetShowcaseState()) {
    on<SetInvertEvent>(_setInvertEvent);
    on<SetSpacingEvent>(_setSpacingEvent);
    on<SetPaddingEvent>(_setPaddingEvent);
    on<SetContentColorBuilderEnabledEvent>(_setContentColorBuilderEnabledEvent);
    on<SetIdleContentColorEvent>(_setIdleContentColorEvent);
    on<SetHoverContentColorEvent>(_setHoverContentColorEvent);
    on<SetTapContentColorEvent>(_setTapContentColorEvent);
    on<SetIconEvent>(_setIconEvent);
    on<SetIconSizeEvent>(_setIconSizeEvent);
    on<SetTextEvent>(_setTextEvent);
    on<SetTextMaxLinesEvent>(_setTextMaxLinesEvent);
    on<SetTextOverflowEvent>(_setTextOverflowEvent);
    on<SetTextAlignmentEvent>(_setTextAlignmentEvent);
    on<SetTextStyleEvent>(_setTextStyleEvent);
  }

  void _setInvertEvent(SetInvertEvent event, _Emitter emit) {
    emit(state.copyWith(invert: event.invert));
  }

  void _setSpacingEvent(SetSpacingEvent event, _Emitter emit) {
    emit(state.copyWith(spacing: event.spacing));
  }

  void _setPaddingEvent(SetPaddingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        padding: state.padding.copyWith(
          top: event.top,
          bottom: event.bottom,
          left: event.left,
          right: event.right,
        ),
      ),
    );
  }

  void _setContentColorBuilderEnabledEvent(
    SetContentColorBuilderEnabledEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(contentColorBuilderEnabled: event.contentColorBuilderEnabled));
  }

  void _setIdleContentColorEvent(SetIdleContentColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        idleContentColor: event.idleContentColor,
        idleContentColorProvided: event.idleContentColor != null,
      ),
    );
  }

  void _setHoverContentColorEvent(SetHoverContentColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        hoverContentColor: event.hoverContentColor,
        hoverContentColorProvided: event.hoverContentColor != null,
      ),
    );
  }

  void _setTapContentColorEvent(SetTapContentColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        tapContentColor: event.tapContentColor,
        tapContentColorProvided: event.tapContentColor != null,
      ),
    );
  }

  void _setIconEvent(SetIconEvent event, _Emitter emit) {
    emit(state.copyWith(icon: event.icon, iconProvided: event.icon != null));
  }

  void _setIconSizeEvent(SetIconSizeEvent event, _Emitter emit) {
    emit(state.copyWith(iconSize: event.iconSize, iconSizeProvided: event.iconSize != null));
  }

  void _setTextEvent(SetTextEvent event, _Emitter emit) {
    emit(state.copyWith(text: event.text));
  }

  void _setTextMaxLinesEvent(SetTextMaxLinesEvent event, _Emitter emit) {
    emit(state.copyWith(textMaxLines: event.textMaxLines));
  }

  void _setTextOverflowEvent(SetTextOverflowEvent event, _Emitter emit) {
    emit(state.copyWith(textOverflow: event.textOverflow));
  }

  void _setTextAlignmentEvent(SetTextAlignmentEvent event, _Emitter emit) {
    emit(state.copyWith(textAlignment: event.textAlignment));
  }

  void _setTextStyleEvent(SetTextStyleEvent event, _Emitter emit) {
    emit(state.copyWith(textStyle: event.textStyle, textStyleProvided: event.textStyle != null));
  }
}
