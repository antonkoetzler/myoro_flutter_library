import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroGroupCheckboxWidgetShowcaseScreenViewModel].
final class MyoroGroupCheckboxWidgetShowcaseScreenState extends ChangeNotifier {
  MyoroGroupCheckboxWidgetShowcaseScreenState(this._spacing, this._runSpacing);

  /// [MyoroGroupCheckbox.direction]
  Axis _direction = MyoroGroupCheckbox.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroGroupCheckbox.spacing]
  double _spacing;
  double get spacing => _spacing;
  set spacing(double spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroGroupCheckbox.runSpacing]
  double _runSpacing;
  double get runSpacing => _runSpacing;
  set runSpacing(double runSpacing) {
    _runSpacing = runSpacing;
    notifyListeners();
  }
}
