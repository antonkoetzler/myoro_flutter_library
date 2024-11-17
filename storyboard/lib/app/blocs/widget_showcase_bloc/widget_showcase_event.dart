part of 'widget_showcase_bloc.dart';

@immutable
sealed class WidgetShowcaseEvent {
  const WidgetShowcaseEvent();
}

final class ToggleWidgetShowcaseDisplayEvent extends WidgetShowcaseEvent {
  final bool enabled;

  const ToggleWidgetShowcaseDisplayEvent({required this.enabled});
}

final class ToggleWidgetOptionsDisplayEvent extends WidgetShowcaseEvent {
  const ToggleWidgetOptionsDisplayEvent();
}
