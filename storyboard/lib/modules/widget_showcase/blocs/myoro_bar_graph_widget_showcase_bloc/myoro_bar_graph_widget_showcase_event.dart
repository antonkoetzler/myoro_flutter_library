part of 'myoro_bar_graph_widget_showcase_bloc.dart';

@immutable
sealed class MyoroBarGraphWidgetShowcaseEvent {
  const MyoroBarGraphWidgetShowcaseEvent();
}

final class SetSortedEvent extends MyoroBarGraphWidgetShowcaseEvent {
  final bool enabled;

  const SetSortedEvent(this.enabled);
}
