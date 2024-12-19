part of 'myoro_pie_graph_widget_showcase_bloc.dart';

@immutable
sealed class MyoroPieGraphWidgetShowcaseEvent {
  const MyoroPieGraphWidgetShowcaseEvent();
}

final class SetTypeEnumEvent extends MyoroPieGraphWidgetShowcaseEvent {
  final MyoroPieGraphEnum typeEnum;

  const SetTypeEnumEvent(this.typeEnum);
}

final class SetCenterWidgetEnabledEvent extends MyoroPieGraphWidgetShowcaseEvent {
  final bool enabled;

  const SetCenterWidgetEnabledEvent(this.enabled);
}
