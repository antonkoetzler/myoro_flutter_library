import 'package:flutter/material.dart';

/// State of [MyoroCircularLoaderWidgetShowcaseScreenViewModel].
final class MyoroCircularLoaderWidgetShowcaseScreenState extends ChangeNotifier {
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
