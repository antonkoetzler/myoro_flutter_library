part of 'myoro_group_radio_widget_showcase_bloc.dart';

@immutable
sealed class MyoroGroupRadioWidgetShowcaseEvent {
  const MyoroGroupRadioWidgetShowcaseEvent();
}

final class SetDirectionEvent extends MyoroGroupRadioWidgetShowcaseEvent {
  final Axis direction;

  const SetDirectionEvent(this.direction);
}

final class SetSpacingEvent extends MyoroGroupRadioWidgetShowcaseEvent {
  final double spacing;

  const SetSpacingEvent(this.spacing);
}

final class SetRunSpacingEvent extends MyoroGroupRadioWidgetShowcaseEvent {
  final double runSpacing;

  const SetRunSpacingEvent(this.runSpacing);
}
