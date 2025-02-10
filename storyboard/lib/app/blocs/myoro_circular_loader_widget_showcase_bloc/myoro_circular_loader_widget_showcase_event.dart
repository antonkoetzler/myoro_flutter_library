part of 'myoro_circular_loader_widget_showcase_bloc.dart';

@immutable
sealed class MyoroCircularLoaderWidgetShowcaseEvent {
  const MyoroCircularLoaderWidgetShowcaseEvent();
}

final class SetColorEvent extends MyoroCircularLoaderWidgetShowcaseEvent {
  final Color? color;

  const SetColorEvent([this.color]);
}

final class SetSizeEvent extends MyoroCircularLoaderWidgetShowcaseEvent {
  final double size;

  const SetSizeEvent(this.size);
}
