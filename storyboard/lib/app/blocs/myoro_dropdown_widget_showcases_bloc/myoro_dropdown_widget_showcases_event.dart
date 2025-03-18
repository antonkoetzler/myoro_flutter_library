part of 'myoro_dropdown_widget_showcases_bloc.dart';

@immutable
sealed class MyoroDropdownWidgetShowcasesEvent {
  const MyoroDropdownWidgetShowcasesEvent();
}

final class SetLabelEvent extends MyoroDropdownWidgetShowcasesEvent {
  final String label;

  const SetLabelEvent([this.label = '']);
}

final class SetLabelTextStyleEvent extends MyoroDropdownWidgetShowcasesEvent {
  final TextStyle? labelTextStyle;

  const SetLabelTextStyleEvent([this.labelTextStyle]);
}

final class SetEnabledEvent extends MyoroDropdownWidgetShowcasesEvent {
  final bool enabled;

  const SetEnabledEvent(this.enabled);
}

final class SetAllowItemClearingEvent
    extends MyoroDropdownWidgetShowcasesEvent {
  final bool allowItemClearing;

  const SetAllowItemClearingEvent(this.allowItemClearing);
}

final class SetMenuMaxHeightEvent extends MyoroDropdownWidgetShowcasesEvent {
  final double? menuMaxHeight;

  const SetMenuMaxHeightEvent([this.menuMaxHeight]);
}

final class SetMenuSearchCallbackEnabledEvent
    extends MyoroDropdownWidgetShowcasesEvent {
  final bool menuSearchCallbackEnabled;

  const SetMenuSearchCallbackEnabledEvent(this.menuSearchCallbackEnabled);
}

final class SetCheckboxOnChangedEnabledEvent
    extends MyoroDropdownWidgetShowcasesEvent {
  final bool checkboxOnChangedEnabled;

  const SetCheckboxOnChangedEnabledEvent(this.checkboxOnChangedEnabled);
}
