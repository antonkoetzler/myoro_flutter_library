import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroBasicDividerWidgetShowcaseScreenViewModel].
final class MyoroBasicDividerWidgetShowcaseScreenState extends ChangeNotifier {
  static const directionDefaultValue = Axis.horizontal;

  /// [MyoroBasicDividerConfiguration.direction]
  Axis _direction = directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroBasicDividerConfiguration.shortValue]
  double? _shortValue;
  double? get shortValue => _shortValue;
  set shortValue(double? shortValue) {
    _shortValue = shortValue;
    notifyListeners();
  }
}
