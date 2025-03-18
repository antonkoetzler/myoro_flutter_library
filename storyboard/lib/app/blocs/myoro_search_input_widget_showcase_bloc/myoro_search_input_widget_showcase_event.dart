part of 'myoro_search_input_widget_showcase_bloc.dart';

@immutable
sealed class MyoroSearchInputWidgetShowcaseEvent {
  const MyoroSearchInputWidgetShowcaseEvent();
}

final class SetRequestWhenChangedEvent
    extends MyoroSearchInputWidgetShowcaseEvent {
  final bool requestWhenChanged;

  const SetRequestWhenChangedEvent(this.requestWhenChanged);
}
