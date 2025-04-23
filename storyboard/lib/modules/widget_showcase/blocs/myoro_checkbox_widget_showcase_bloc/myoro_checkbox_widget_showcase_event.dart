part of 'myoro_checkbox_widget_showcase_bloc.dart';

@immutable
sealed class MyoroCheckboxWidgetShowcaseEvent {
  const MyoroCheckboxWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroCheckboxWidgetShowcaseEvent {
  final String label;

  const SetLabelEvent(this.label);
}

final class SetLabelTextStyleEvent extends MyoroCheckboxWidgetShowcaseEvent {
  final TextStyle textStyle;

  const SetLabelTextStyleEvent(this.textStyle);
}
