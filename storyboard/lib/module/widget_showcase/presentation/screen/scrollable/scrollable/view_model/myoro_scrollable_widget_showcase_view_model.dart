import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model for [MyoroScrollableWidgetShowcaseScreen].
final class MyoroScrollableWidgetShowcaseViewModel extends ChangeNotifier {
  // Configuration options
  Axis _scrollDirection = Axis.vertical;
  ScrollPhysics? _physics;
  bool _gradientEnabled = true;
  double _gradientSize = 20.0;
  Color _gradientColor = Colors.white;

  // Style options
  Color? _backgroundColor;
  BorderRadius? _borderRadius;
  EdgeInsets? _padding;
  EdgeInsets? _margin;

  // Getters
  Axis get scrollDirection => _scrollDirection;
  ScrollPhysics? get physics => _physics;
  bool get gradientEnabled => _gradientEnabled;
  double get gradientSize => _gradientSize;
  Color get gradientColor => _gradientColor;
  Color? get backgroundColor => _backgroundColor;
  BorderRadius? get borderRadius => _borderRadius;
  EdgeInsets? get padding => _padding;
  EdgeInsets? get margin => _margin;

  // Configuration getters
  MyoroSingleChildScrollableConfiguration get singleChildConfiguration => MyoroSingleChildScrollableConfiguration(
    scrollDirection: _scrollDirection,
    physics: _physics,
    gradientConfiguration: MyoroScrollableGradientConfiguration(
      enabled: _gradientEnabled,
      size: _gradientSize,
      color: _gradientColor,
    ),
  );

  MyoroListScrollableConfiguration get listConfiguration => MyoroListScrollableConfiguration(
    scrollDirection: _scrollDirection,
    physics: _physics,
    gradientConfiguration: MyoroScrollableGradientConfiguration(
      enabled: _gradientEnabled,
      size: _gradientSize,
      color: _gradientColor,
    ),
  );

  MyoroGridScrollableConfiguration get gridConfiguration => MyoroGridScrollableConfiguration(
    scrollDirection: _scrollDirection,
    physics: _physics,
    gradientConfiguration: MyoroScrollableGradientConfiguration(
      enabled: _gradientEnabled,
      size: _gradientSize,
      color: _gradientColor,
    ),
  );

  MyoroSliverScrollableConfiguration get sliverConfiguration => MyoroSliverScrollableConfiguration(
    scrollDirection: _scrollDirection,
    physics: _physics,
    gradientConfiguration: MyoroScrollableGradientConfiguration(
      enabled: _gradientEnabled,
      size: _gradientSize,
      color: _gradientColor,
    ),
  );

  // Style getter
  MyoroScrollableStyle get style => MyoroScrollableStyle(
    backgroundColor: _backgroundColor,
    borderRadius: _borderRadius,
    padding: _padding,
    margin: _margin,
  );

  // Setters
  void setScrollDirection(Axis value) {
    _scrollDirection = value;
    notifyListeners();
  }

  void setPhysics(ScrollPhysics? value) {
    _physics = value;
    notifyListeners();
  }

  void setGradientEnabled(bool value) {
    _gradientEnabled = value;
    notifyListeners();
  }

  void setGradientSize(double value) {
    _gradientSize = value;
    notifyListeners();
  }

  void setGradientColor(Color value) {
    _gradientColor = value;
    notifyListeners();
  }

  void setBackgroundColor(Color? value) {
    _backgroundColor = value;
    notifyListeners();
  }

  void setBorderRadius(BorderRadius? value) {
    _borderRadius = value;
    notifyListeners();
  }

  void setPadding(EdgeInsets? value) {
    _padding = value;
    notifyListeners();
  }

  void setMargin(EdgeInsets? value) {
    _margin = value;
    notifyListeners();
  }
}
