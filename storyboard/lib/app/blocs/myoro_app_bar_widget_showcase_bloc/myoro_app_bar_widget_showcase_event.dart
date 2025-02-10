part of 'myoro_app_bar_widget_showcase_bloc.dart';

@immutable
sealed class MyoroAppBarWidgetShowcaseEvent {
  const MyoroAppBarWidgetShowcaseEvent();
}

final class ToggleBorderedEvent extends MyoroAppBarWidgetShowcaseEvent {
  const ToggleBorderedEvent();
}
