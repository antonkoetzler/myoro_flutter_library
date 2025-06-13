part of '../myoro_circular_loader_widget_showcase.dart';

final class MyoroCircularLoaderWidgetShowcaseViewModel extends ChangeNotifier {
  /// State
  final state = MyoroCircularLoaderWidgetShowcaseState();

  /// [MyoroCircularLoaderConfiguration] of [_Widget].
  MyoroCircularLoaderConfiguration get configuration {
    return MyoroCircularLoaderConfiguration(color: state.color, size: state.size);
  }
}
