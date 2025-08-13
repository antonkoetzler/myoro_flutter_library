import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroSliderWidgetShowcaseScreenViewModel].
final class MyoroSliderWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroSliderConfiguration.value]
  double _value = 0.0;
  double get value => _value;
  set value(double value) {
    if (_value == value) return;
    _value = value;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.label]
  String _label = MyoroSliderConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.currentValueText]
  bool _currentValueTextEnabled = false;
  bool get currentValueTextEnabled => _currentValueTextEnabled;
  set currentValueTextEnabled(bool currentValueTextEnabled) {
    _currentValueTextEnabled = currentValueTextEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.maxValueText]
  bool _maxValueTextEnabled = false;
  bool get maxValueTextEnabled => _maxValueTextEnabled;
  set maxValueTextEnabled(bool maxValueTextEnabled) {
    _maxValueTextEnabled = maxValueTextEnabled;
    notifyListeners();
  }

  /// [MyoroSliderConfiguration.footerText]
  bool _footerTextEnabled = false;
  bool get footerTextEnabled => _footerTextEnabled;
  set footerTextEnabled(bool footerTextEnabled) {
    _footerTextEnabled = footerTextEnabled;
    notifyListeners();
  }
}
