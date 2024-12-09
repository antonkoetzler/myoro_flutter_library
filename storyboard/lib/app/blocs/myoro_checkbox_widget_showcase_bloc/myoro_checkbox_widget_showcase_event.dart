part of 'myoro_checkbox_widget_showcase_bloc.dart';

@immutable
sealed class MyoroCheckboxWidgetShowcaseEvent {
  const MyoroCheckboxWidgetShowcaseEvent();
}

final class SetLabelTextEvent extends MyoroCheckboxWidgetShowcaseEvent {
  final String label;

  const SetLabelTextEvent(this.label);
}
