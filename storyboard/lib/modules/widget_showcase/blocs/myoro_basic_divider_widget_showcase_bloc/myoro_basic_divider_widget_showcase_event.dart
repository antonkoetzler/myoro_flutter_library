part of 'myoro_basic_divider_widget_showcase_bloc.dart';

@immutable
sealed class MyoroBasicDividerWidgetShowcaseEvent {
  const MyoroBasicDividerWidgetShowcaseEvent();
}

final class SetDirectionEvent extends MyoroBasicDividerWidgetShowcaseEvent {
  final Axis direction;

  const SetDirectionEvent(this.direction);
}

final class SetShortValueEvent extends MyoroBasicDividerWidgetShowcaseEvent {
  final double value;

  const SetShortValueEvent(this.value);
}

final class SetPaddingEvent extends MyoroBasicDividerWidgetShowcaseEvent {
  final Axis direction;
  final double value;

  const SetPaddingEvent(this.direction, this.value);
}
