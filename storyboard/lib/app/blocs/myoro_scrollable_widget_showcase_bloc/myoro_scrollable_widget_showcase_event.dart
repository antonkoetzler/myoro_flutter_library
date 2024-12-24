part of 'myoro_scrollable_widget_showcase_bloc.dart';

@immutable
sealed class MyoroScrollableWidgetShowcaseEvent {
  const MyoroScrollableWidgetShowcaseEvent();
}

final class SetScrollableTypeEvent extends MyoroScrollableWidgetShowcaseEvent {
  final MyoroScrollableEnum scrollableType;

  const SetScrollableTypeEvent(this.scrollableType);
}

final class SetDirectionEvent extends MyoroScrollableWidgetShowcaseEvent {
  final Axis direction;

  const SetDirectionEvent(this.direction);
}

final class SetPaddingEvent extends MyoroScrollableWidgetShowcaseEvent {
  final double padding;

  const SetPaddingEvent(this.padding);
}
