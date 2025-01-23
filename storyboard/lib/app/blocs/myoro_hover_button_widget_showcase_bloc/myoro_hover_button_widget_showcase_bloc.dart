import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_hover_button_widget_showcase_state.dart';
part 'myoro_hover_button_widget_showcase_event.dart';

typedef _Emitter = Emitter<MyoroHoverButtonWidgetShowcaseState>;

/// BLoC to manage all of the state in [MyoroHoverButtonWidgetShowcase].
final class MyoroHoverButtonWidgetShowcaseBloc extends Bloc<MyoroHoverButtonWidgetShowcaseEvent, MyoroHoverButtonWidgetShowcaseState> {
  MyoroHoverButtonWidgetShowcaseBloc() : super(const MyoroHoverButtonWidgetShowcaseState()) {
    on<SetPrimaryColorEvent>(_setPrimaryColorEvent);
    on<SetOnPrimaryColorEvent>(_setOnPrimaryColorEvent);
    on<SetIsHoveredEvent>((_, emit) => _setIsHoveredEvent(emit));
    on<SetBorderedEvent>((_, emit) => _setIsBorderedEvent(emit));
    on<SetBorderRadiusEvent>(_setBorderRadiusEvent);
    on<SetTooltipEnabledEvent>((_, emit) => _setTooltipEnabledEvent(emit));
    on<SetOnPressedEnabledEvent>((_, emit) => _setOnPressedEnabledEvent(emit));
  }

  void _setPrimaryColorEvent(SetPrimaryColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        primaryColor: event.color,
        primaryColorEnabled: event.color != null,
      ),
    );
  }

  void _setOnPrimaryColorEvent(SetOnPrimaryColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        onPrimaryColor: event.color,
        onPrimaryColorEnabled: event.color != null,
      ),
    );
  }

  void _setIsHoveredEvent(_Emitter emit) {
    emit(
      state.copyWith(
        isHovered: !state.isHovered,
      ),
    );
  }

  void _setIsBorderedEvent(_Emitter emit) {
    emit(
      state.copyWith(
        bordered: !state.bordered,
      ),
    );
  }

  void _setBorderRadiusEvent(SetBorderRadiusEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        borderRadius: event.borderRadius == null ? null : BorderRadius.circular(event.borderRadius!),
        borderRadiusEnabled: event.borderRadius != null,
      ),
    );
  }

  void _setTooltipEnabledEvent(_Emitter emit) {
    emit(
      state.copyWith(
        tooltipEnabled: !state.tooltipEnabled,
      ),
    );
  }

  void _setOnPressedEnabledEvent(_Emitter emit) {
    emit(
      state.copyWith(
        onPressedEnabled: !state.onPressedEnabled,
      ),
    );
  }
}
