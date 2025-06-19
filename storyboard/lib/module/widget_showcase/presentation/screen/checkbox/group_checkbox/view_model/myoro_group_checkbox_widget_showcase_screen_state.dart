import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroGroupCheckboxWidgetShowcaseScreenViewModel].
final class MyoroGroupCheckboxWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroGroupCheckboxConfiguration.direction]
  Axis _direction = MyoroGroupCheckboxConfiguration.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroGroupCheckboxConfiguration.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroGroupCheckboxConfiguration.runSpacing]
  double? _runSpacing;
  double? get runSpacing => _runSpacing;
  set runSpacing(double? runSpacing) {
    _runSpacing = runSpacing;
    notifyListeners();
  }
}
