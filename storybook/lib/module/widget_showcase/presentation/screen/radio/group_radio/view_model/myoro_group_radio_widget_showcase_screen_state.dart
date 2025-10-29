import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroGroupRadioWidgetShowcaseScreenViewModel].
final class MyoroGroupRadioWidgetShowcaseScreenState extends ChangeNotifier {
  /// View model of [MyoroRadioWidgetShowcaseScreen].
  final _radioViewModel = MyoroRadioWidgetShowcaseScreenViewModel();
  MyoroRadioWidgetShowcaseScreenViewModel get radioViewModel => _radioViewModel;

  /// [MyoroGroupRadio.direction]
  Axis _direction = MyoroGroupRadio.directionDefaultValue;
  Axis get direction => _direction;
  set direction(Axis direction) {
    _direction = direction;
    notifyListeners();
  }

  /// [MyoroGroupRadio.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroGroupRadio.runSpacing]
  double? _runSpacing;
  double? get runSpacing => _runSpacing;
  set runSpacing(double? runSpacing) {
    _runSpacing = runSpacing;
    notifyListeners();
  }

  /// [MyoroGroupRadio.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }
}
