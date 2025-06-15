part of '../myoro_circular_loader_widget_showcase.dart';

final class MyoroCircularLoaderWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroCircularLoaderConfiguration.color]
  Color? _color;
  Color? get color => _color;
  set color(Color? color) {
    _color = color;
    notifyListeners();
  }

  /// [MyoroCircularLoaderConfiguration.size]
  double? _size;
  double? get size => _size;
  set size(double? size) {
    _size = size;
    notifyListeners();
  }
}
