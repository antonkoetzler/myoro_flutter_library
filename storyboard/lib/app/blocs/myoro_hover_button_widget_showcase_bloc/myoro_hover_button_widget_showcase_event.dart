part of 'myoro_hover_button_widget_showcase_bloc.dart';

@immutable
sealed class MyoroHoverButtonWidgetShowcaseEvent {
  const MyoroHoverButtonWidgetShowcaseEvent();
}

final class SetPrimaryColorEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  final Color? color;

  const SetPrimaryColorEvent(this.color);
}

final class SetOnPrimaryColorEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  final Color? color;

  const SetOnPrimaryColorEvent(this.color);
}

final class SetOnPressedEnabledEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  const SetOnPressedEnabledEvent();
}

final class SetIsHoveredEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  const SetIsHoveredEvent();
}

final class SetBorderedEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  const SetBorderedEvent();
}

final class SetBorderRadiusEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  final double? borderRadius;

  const SetBorderRadiusEvent(this.borderRadius);
}

final class SetTooltipEnabledEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  const SetTooltipEnabledEvent();
}
