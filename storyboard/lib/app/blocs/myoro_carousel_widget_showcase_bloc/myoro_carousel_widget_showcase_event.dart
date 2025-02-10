part of 'myoro_carousel_widget_showcase_bloc.dart';

@immutable
sealed class MyoroCarouselWidgetShowcaseEvent {
  const MyoroCarouselWidgetShowcaseEvent();
}

final class SetDirectionEvent extends MyoroCarouselWidgetShowcaseEvent {
  final Axis direction;

  const SetDirectionEvent(this.direction);
}

final class SetDisplayTraversalButtonsEvent extends MyoroCarouselWidgetShowcaseEvent {
  final bool displayTraversalButtons;

  const SetDisplayTraversalButtonsEvent(this.displayTraversalButtons);
}

final class SetAutoplayEvent extends MyoroCarouselWidgetShowcaseEvent {
  final bool autoplay;

  const SetAutoplayEvent(this.autoplay);
}

final class SetAutoplayIntervalDurationEvent extends MyoroCarouselWidgetShowcaseEvent {
  final Duration duration;

  const SetAutoplayIntervalDurationEvent(this.duration);
}
