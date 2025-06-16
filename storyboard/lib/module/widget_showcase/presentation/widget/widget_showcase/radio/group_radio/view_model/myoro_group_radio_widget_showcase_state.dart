import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroGroupRadioWidgetShowcaseViewModel].
final class MyoroGroupRadioWidgetShowcaseState extends ChangeNotifier {
  /// View model of [MyoroRadioWidgetShowcase].
  final _radioViewModel = MyoroRadioWidgetShowcaseViewModel();
  MyoroRadioWidgetShowcaseViewModel get radioViewModel => _radioViewModel;

  /// [MyoroGroupRadioConfiguration.direction]
  Axis _direction = MyoroGroupRadioConfiguration.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroGroupRadioConfiguration.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroGroupRadioConfiguration.runSpacing]
  double? _runSpacing;
  double? get runSpacing => _runSpacing;
  set runSpacing(double? runSpacing) {
    _runSpacing = runSpacing;
    notifyListeners();
  }

  /// [MyoroGroupRadioConfiguration.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }
}
