part of 'myoro_radio_widget_showcase_bloc.dart';

@immutable
sealed class MyoroRadioWidgetShowcaseEvent {
  const MyoroRadioWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroRadioWidgetShowcaseEvent {
  final String? label;

  const SetLabelEvent([this.label]);
}

final class SetLabelTextStyleEvent extends MyoroRadioWidgetShowcaseEvent {
  final TextStyle? labelTextStyle;

  const SetLabelTextStyleEvent([this.labelTextStyle]);
}
