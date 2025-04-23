part of 'myoro_material_app_widget_showcase_bloc.dart';

@immutable
sealed class MyoroMaterialAppWidgetShowcaseEvent {
  const MyoroMaterialAppWidgetShowcaseEvent();
}

final class ToggleThemeModeEvent extends MyoroMaterialAppWidgetShowcaseEvent {
  const ToggleThemeModeEvent();
}
