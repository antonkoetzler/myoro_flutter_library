part of 'myoro_group_checkbox_widget_showcase_bloc.dart';

sealed class MyoroGroupCheckboxWidgetShowcaseEvent {
  const MyoroGroupCheckboxWidgetShowcaseEvent();
}

final class SetItemsEvent extends MyoroGroupCheckboxWidgetShowcaseEvent {
  final List<MyoroGroupCheckboxItem> items;

  const SetItemsEvent(this.items);
}
