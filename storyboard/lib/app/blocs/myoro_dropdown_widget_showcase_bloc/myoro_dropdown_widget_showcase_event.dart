part of 'myoro_dropdown_widget_showcase_bloc.dart';

@immutable
sealed class MyoroDropdownWidgetShowcaseEvent {
  const MyoroDropdownWidgetShowcaseEvent();
}

final class SetLabelEvent extends MyoroDropdownWidgetShowcaseEvent {
  final String label;

  const SetLabelEvent([this.label = '']);
}

final class SetEnabledEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool? enabled;

  const SetEnabledEvent([this.enabled]);
}

final class SetAllowItemClearingEvent extends MyoroDropdownWidgetShowcaseEvent {
  final bool? allowItemClearing;

  const SetAllowItemClearingEvent([this.allowItemClearing]);
}

final class SetCheckboxOnChangedEnabledEvent
    extends MyoroDropdownWidgetShowcaseEvent {
  final bool? checkboxOnChangedEnabled;

  const SetCheckboxOnChangedEnabledEvent([this.checkboxOnChangedEnabled]);
}

final class SetMenuMaxHeightEvent extends MyoroDropdownWidgetShowcaseEvent {
  final double menuMaxHeight;

  const SetMenuMaxHeightEvent(this.menuMaxHeight);
}
