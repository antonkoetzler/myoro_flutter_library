part of 'myoro_table_widget_showcase_bloc.dart';

@immutable
sealed class MyoroTableWidgetShowcaseEvent {
  const MyoroTableWidgetShowcaseEvent();
}

final class SetEnableCheckboxesEvent extends MyoroTableWidgetShowcaseEvent {
  final bool enableCheckboxes;

  const SetEnableCheckboxesEvent(this.enableCheckboxes);
}

final class SetShowPaginationControlsEvent extends MyoroTableWidgetShowcaseEvent {
  final bool showPaginationControls;

  const SetShowPaginationControlsEvent(this.showPaginationControls);
}
