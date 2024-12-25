part of 'myoro_tooltip_widget_showcase_bloc.dart';

@immutable
sealed class MyoroTooltipWidgetShowcaseEvent {
  const MyoroTooltipWidgetShowcaseEvent();
}

final class SetMarginEvent extends MyoroTooltipWidgetShowcaseEvent {
  final double margin;

  const SetMarginEvent(this.margin);
}

final class SetTextEvent extends MyoroTooltipWidgetShowcaseEvent {
  final String text;

  const SetTextEvent(this.text);
}
