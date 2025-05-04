import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_button_widget_showcase_event.dart';
part 'myoro_button_widget_showcase_state.dart';

typedef _Emitter = Emitter<MyoroButtonWidgetShowcaseState>;

/// [Bloc] of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseBloc
    extends
        Bloc<MyoroButtonWidgetShowcaseEvent, MyoroButtonWidgetShowcaseState> {
  static Color backgroundColorBuilder(
    MyoroTapStatusEnum tapStatusEnum,
    MyoroButtonWidgetShowcaseState state,
  ) {
    const Color transparent = MyoroColorDesignSystem.transparent;
    return switch (tapStatusEnum) {
      MyoroTapStatusEnum.idle => state.idleBackgroundColor ?? transparent,
      MyoroTapStatusEnum.hover => state.hoverBackgroundColor ?? transparent,
      MyoroTapStatusEnum.tap => state.tapBackgroundColor ?? transparent,
    };
  }

  static BoxBorder borderBuilder(
    BuildContext context,
    MyoroTapStatusEnum tapStatusEnum,
    MyoroButtonWidgetShowcaseState state,
  ) {
    final themeExtension =
        context
            .resolveThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>();
    const Color transparent = MyoroColorDesignSystem.transparent;
    return Border.all(
      width: state.borderWidth ?? themeExtension.borderWidth,
      color: switch (tapStatusEnum) {
        MyoroTapStatusEnum.idle => state.idleBorderColor ?? transparent,
        MyoroTapStatusEnum.hover => state.hoverBorderColor ?? transparent,
        MyoroTapStatusEnum.tap => state.tapBorderColor ?? transparent,
      },
    );
  }

  static void onTapDown(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(message: 'Button was pressed.'),
    );
  }

  static void onTapUp(BuildContext context) {
    context.showSnackBar(
      snackBar: MyoroSnackBar(message: 'Button was released.'),
    );
  }

  MyoroButtonWidgetShowcaseBloc()
    : super(const MyoroButtonWidgetShowcaseState()) {
    on<SetCursorEvent>(_setCursorEvent);
    on<SetBorderRadiusEvent>(_setBorderRadiusEvent);
    on<SetBackgroundColorBuilderEnabledEvent>(
      _setBackgroundColorBuilderEnabledEvent,
    );
    on<SetIdleBackgroundColorEvent>(_setIdleBackgroundColorEvent);
    on<SetHoverBackgroundColorEvent>(_setHoverBackgroundColorEvent);
    on<SetTapBackgroundColorEvent>(_setTapBackgroundColorEvent);
    on<SetBorderBuilderEnabledEvent>(_setBorderBuilderEnabledEvent);
    on<SetBorderWidthEvent>(_setBorderWidthEvent);
    on<SetIdleBorderColorEvent>(_setIdleBorderColorEvent);
    on<SetHoverBorderColorEvent>(_setHoverBorderColorEvent);
    on<SetTapBorderColorEvent>(_setTapBorderColorEvent);
    on<SetOnTapDownEnabledEvent>(_setOnTapDownEnabledEvent);
    on<SetOnTapUpEnabledEvent>(_setOnTapUpEnabledEvent);
  }

  void _setCursorEvent(SetCursorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        cursor: event.cursor,
        cursorProvided: event.cursor != null,
      ),
    );
  }

  void _setBorderRadiusEvent(SetBorderRadiusEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        borderRadius: event.borderRadius,
        borderRadiusProvided: event.borderRadius != null,
      ),
    );
  }

  void _setBackgroundColorBuilderEnabledEvent(
    SetBackgroundColorBuilderEnabledEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        backgroundColorBuilderEnabled: event.backgroundColorBuilderEnabled,
      ),
    );
  }

  void _setIdleBackgroundColorEvent(
    SetIdleBackgroundColorEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        idleBackgroundColor: event.idleBackgroundColor,
        idleBackgroundColorProvided: event.idleBackgroundColor != null,
      ),
    );
  }

  void _setHoverBackgroundColorEvent(
    SetHoverBackgroundColorEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        hoverBackgroundColor: event.hoverBackgroundColor,
        hoverBackgroundColorProvided: event.hoverBackgroundColor != null,
      ),
    );
  }

  void _setTapBackgroundColorEvent(
    SetTapBackgroundColorEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        tapBackgroundColor: event.tapBackgroundColor,
        tapBackgroundColorProvided: event.tapBackgroundColor != null,
      ),
    );
  }

  void _setBorderBuilderEnabledEvent(
    SetBorderBuilderEnabledEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(borderBuilderEnabled: event.borderBuilderEnabled));
  }

  void _setBorderWidthEvent(SetBorderWidthEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        borderWidth: event.borderWidth,
        borderWidthProvided: event.borderWidth != null,
      ),
    );
  }

  void _setIdleBorderColorEvent(SetIdleBorderColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        idleBorderColor: event.idleBorderColor,
        idleBorderColorProvided: event.idleBorderColor != null,
      ),
    );
  }

  void _setHoverBorderColorEvent(
    SetHoverBorderColorEvent event,
    _Emitter emit,
  ) {
    emit(
      state.copyWith(
        hoverBorderColor: event.hoverBorderColor,
        hoverBorderColorProvided: event.hoverBorderColor != null,
      ),
    );
  }

  void _setTapBorderColorEvent(SetTapBorderColorEvent event, _Emitter emit) {
    emit(
      state.copyWith(
        tapBorderColor: event.tapBorderColor,
        tapBorderColorProvided: event.tapBorderColor != null,
      ),
    );
  }

  void _setOnTapDownEnabledEvent(
    SetOnTapDownEnabledEvent event,
    _Emitter emit,
  ) {
    emit(state.copyWith(onTapDownEnabled: event.onTapDownEnabled));
  }

  void _setOnTapUpEnabledEvent(SetOnTapUpEnabledEvent event, _Emitter emit) {
    emit(state.copyWith(onTapUpEnabled: event.onTapUpEnabled));
  }
}
