part of 'myoro_app_widget_showcase_bloc.dart';

@immutable
sealed class MyoroAppWidgetShowcaseEvent {
  const MyoroAppWidgetShowcaseEvent();
}

final class ToggleThemeModeEvent extends MyoroAppWidgetShowcaseEvent {
  const ToggleThemeModeEvent();
}
