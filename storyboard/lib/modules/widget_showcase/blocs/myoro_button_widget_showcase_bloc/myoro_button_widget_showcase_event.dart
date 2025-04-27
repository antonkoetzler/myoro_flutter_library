part of 'myoro_button_widget_showcase_bloc.dart';

@immutable
sealed class MyoroButtonWidgetShowcaseEvent {
  const MyoroButtonWidgetShowcaseEvent();
}

final class SetCursorEvent extends MyoroButtonWidgetShowcaseEvent {
  final MouseCursor? cursor;

  const SetCursorEvent([this.cursor]);
}

final class SetBorderRadiusEvent extends MyoroButtonWidgetShowcaseEvent {
  final double? borderRadius;

  const SetBorderRadiusEvent([this.borderRadius]);
}

final class SetBackgroundColorBuilderEnabledEvent extends MyoroButtonWidgetShowcaseEvent {
  final bool backgroundColorBuilderEnabled;

  const SetBackgroundColorBuilderEnabledEvent(this.backgroundColorBuilderEnabled);
}

final class SetIdleBackgroundColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? idleBackgroundColor;

  const SetIdleBackgroundColorEvent([this.idleBackgroundColor]);
}

final class SetHoverBackgroundColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? hoverBackgroundColor;

  const SetHoverBackgroundColorEvent([this.hoverBackgroundColor]);
}

final class SetTapBackgroundColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? tapBackgroundColor;

  const SetTapBackgroundColorEvent([this.tapBackgroundColor]);
}

final class SetBorderBuilderEnabledEvent extends MyoroButtonWidgetShowcaseEvent {
  final bool borderBuilderEnabled;

  const SetBorderBuilderEnabledEvent(this.borderBuilderEnabled);
}

final class SetBorderWidthEvent extends MyoroButtonWidgetShowcaseEvent {
  final double? borderWidth;

  const SetBorderWidthEvent([this.borderWidth]);
}

final class SetIdleBorderColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? idleBorderColor;

  const SetIdleBorderColorEvent([this.idleBorderColor]);
}

final class SetHoverBorderColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? hoverBorderColor;

  const SetHoverBorderColorEvent([this.hoverBorderColor]);
}

final class SetTapBorderColorEvent extends MyoroButtonWidgetShowcaseEvent {
  final Color? tapBorderColor;

  const SetTapBorderColorEvent([this.tapBorderColor]);
}

final class SetOnTapDownEnabledEvent extends MyoroButtonWidgetShowcaseEvent {
  final bool onTapDownEnabled;

  const SetOnTapDownEnabledEvent(this.onTapDownEnabled);
}

final class SetOnTapUpEnabledEvent extends MyoroButtonWidgetShowcaseEvent {
  final bool onTapUpEnabled;

  const SetOnTapUpEnabledEvent(this.onTapUpEnabled);
}
