part of 'myoro_menu_widget_showcase_bloc.dart';

@immutable
sealed class MyoroMenuWidgetShowcaseEvent {
  const MyoroMenuWidgetShowcaseEvent();
}

final class SetMaxHeightEvent extends MyoroMenuWidgetShowcaseEvent {
  final double maxHeight;

  const SetMaxHeightEvent(this.maxHeight);
}

final class SetItemCountEvent extends MyoroMenuWidgetShowcaseEvent {
  final int itemCount;

  const SetItemCountEvent(this.itemCount);
}
