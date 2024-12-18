part of 'myoro_dropdown_widget_showcase_bloc.dart';

@immutable
sealed class MyoroDropdownWidgetShowcaseEvent {
  const MyoroDropdownWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroDropdownWidgetShowcaseEvent {
  final String? label;

  const SetLabelEvent([this.label]);
}

final class SetLabelTextStyleEvent extends MyoroDropdownWidgetShowcaseEvent {
  final TextStyle? textStyle;

  const SetLabelTextStyleEvent([this.textStyle]);
}

final class SetEnabledEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool enabled;

  const SetEnabledEvent(this.enabled);
}

final class SetEnableMultiSelectionEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool enabled;

  const SetEnableMultiSelectionEvent(this.enabled);
}

final class SetShowClearTextButtonEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool enabled;

  const SetShowClearTextButtonEvent(this.enabled);
}

final class SetSearchCallbackEnabledEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool enabled;

  const SetSearchCallbackEnabledEvent(this.enabled);
}

final class SetCheckboxOnChangedEnabledEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool enabled;

  const SetCheckboxOnChangedEnabledEvent(this.enabled);
}
