part of 'myoro_menu_widget_showcase_bloc.dart';

@immutable
sealed class MyoroMenuWidgetShowcaseEvent {
  const MyoroMenuWidgetShowcaseEvent();
}

final class SetMinWidthEvent extends MyoroMenuWidgetShowcaseEvent {
  final double? minWidth;

  const SetMinWidthEvent([this.minWidth]);
}

final class SetMaxWidthEvent extends MyoroMenuWidgetShowcaseEvent {
  final double? maxWidth;

  const SetMaxWidthEvent([this.maxWidth]);
}

final class SetMinHeightEvent extends MyoroMenuWidgetShowcaseEvent {
  final double? minHeight;

  const SetMinHeightEvent([this.minHeight]);
}

final class SetMaxHeightEvent extends MyoroMenuWidgetShowcaseEvent {
  final double? maxHeight;

  const SetMaxHeightEvent([this.maxHeight]);
}

final class SetSearchCallbackEnabledEvent extends MyoroMenuWidgetShowcaseEvent {
  final bool enabled;

  const SetSearchCallbackEnabledEvent(this.enabled);
}
