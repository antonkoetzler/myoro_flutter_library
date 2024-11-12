part of 'widget_showcase_bloc.dart';

@immutable
sealed class WidgetShowcaseEvent {
  const WidgetShowcaseEvent();
}

final class EnableWidgetShowcaseDisplayEvent extends WidgetShowcaseEvent {
  const EnableWidgetShowcaseDisplayEvent();
}

final class ToggleWidgetOptionsDisplayEvent extends WidgetShowcaseEvent {
  const ToggleWidgetOptionsDisplayEvent();
}
