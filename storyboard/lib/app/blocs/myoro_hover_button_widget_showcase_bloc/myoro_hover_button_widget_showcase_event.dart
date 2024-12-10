part of 'myoro_hover_button_widget_showcase_bloc.dart';

@immutable
sealed class MyoroHoverButtonWidgetShowcaseEvent {
  const MyoroHoverButtonWidgetShowcaseEvent();
}

final class ToggleOnPressedEnabledEvent extends MyoroHoverButtonWidgetShowcaseEvent {
  const ToggleOnPressedEnabledEvent();
}
