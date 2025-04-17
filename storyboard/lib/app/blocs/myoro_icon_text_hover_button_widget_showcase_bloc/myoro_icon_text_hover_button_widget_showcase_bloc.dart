import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_icon_text_hover_button_widget_showcase_state.dart';
part 'myoro_icon_text_hover_button_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroIconTextHoverButtonWidgetShowcaseState>;

/// BLoC of [MyoroIconTextHoverButtonWidgetShowcase].
final class MyoroIconTextHoverButtonWidgetShowcaseBloc
    extends
        Bloc<
          MyoroIconTextHoverButtonWidgetShowcaseEvent,
          MyoroIconTextHoverButtonWidgetShowcaseState
        > {
  MyoroIconTextHoverButtonWidgetShowcaseBloc()
    : super(MyoroIconTextHoverButtonWidgetShowcaseState()) {
    on<SetIconEvent>(_setIconEvent);
    on<SetIconSizeEvent>(_setIconSizeEvent);
    on<SetTextEvent>(_setTextEvent);
    on<SetTextStyleEvent>(_setTextStyleEvent);
    on<SetTextAlignEvent>(_setTextAlignEvent);
    on<SetPaddingEvent>(_setPaddingEvent);
    on<SetMainAxisAlignmentEvent>(_setMainAxisAlignmentEvent);
    on<SetOnPressedEnabledEvent>(_setOnPressedEnabledEvent);
  }

  void _setIconEvent(SetIconEvent event, _Emitter emit) {
    emit(state.copyWith(icon: event.icon, iconProvided: event.icon != null));
  }

  void _setIconSizeEvent(SetIconSizeEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        iconSize: event.iconSize,
        iconSizeProvided: event.iconSize != null,
      ),
    );
  }

  void _setTextEvent(SetTextEvent event, _Emitter emit) {
    emit(state.copyWith(text: event.text, textProvided: event.text.isNotEmpty));
  }

  void _setTextStyleEvent(SetTextStyleEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        textStyle: event.textStyle,
        textStyleProvided: event.textStyle != null,
      ),
    );
  }

  void _setTextAlignEvent(SetTextAlignEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        textAlign: event.textAlign,
        textAlignProvided: event.textAlign != null,
      ),
    );
  }

  void _setPaddingEvent(SetPaddingEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        padding: event.padding,
        paddingProvided: event.padding != null,
      ),
    );
  }

  void _setMainAxisAlignmentEvent(
    SetMainAxisAlignmentEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        mainAxisAlignment: event.mainAxisAlignment,
        mainAxisAlignmentProvided: event.mainAxisAlignment != null,
      ),
    );
  }

  void _setOnPressedEnabledEvent(
    SetOnPressedEnabledEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(onPressedEnabled: event.onPressedEnabled));
  }
}
