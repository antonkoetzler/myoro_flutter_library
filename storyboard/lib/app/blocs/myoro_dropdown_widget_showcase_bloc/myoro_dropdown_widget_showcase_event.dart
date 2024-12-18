part of 'myoro_dropdown_widget_showcase_bloc.dart';

@immutable
sealed class MyoroDropdownWidgetShowcaseEvent {
  const MyoroDropdownWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroDropdownWidgetShowcaseEvent {
  final String? label;

  const SetLabelEvent(this.label);
}
