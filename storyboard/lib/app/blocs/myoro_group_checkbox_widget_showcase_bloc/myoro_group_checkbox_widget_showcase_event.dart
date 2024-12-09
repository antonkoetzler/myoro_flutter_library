part of 'myoro_group_checkbox_widget_showcase_bloc.dart';

sealed class MyoroGroupCheckboxWidgetShowcaseEvent {
  const MyoroGroupCheckboxWidgetShowcaseEvent();
}

final class SetDirectionEvent extends MyoroGroupCheckboxWidgetShowcaseEvent {
  final Axis direction;

  const SetDirectionEvent(this.direction);
}

final class SetSpacingEvent extends MyoroGroupCheckboxWidgetShowcaseEvent {
  final double spacing;

  const SetSpacingEvent(this.spacing);
}

final class SetRunSpacingEvent extends MyoroGroupCheckboxWidgetShowcaseEvent {
  final double runSpacing;

  const SetRunSpacingEvent(this.runSpacing);
}

final class SetItemsEvent extends MyoroGroupCheckboxWidgetShowcaseEvent {
  final MyoroGroupCheckboxItems checkboxes;

  const SetItemsEvent(this.checkboxes);
}
