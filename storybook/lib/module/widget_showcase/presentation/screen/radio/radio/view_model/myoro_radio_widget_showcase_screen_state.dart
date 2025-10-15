import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroRadioWidgetShowcaseScreenViewModel].
final class MyoroRadioWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroRadioConfiguration.label]
  String _label = MyoroRadioConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroRadioConfiguration.labelTextStyle]
  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }

  /// [MyoroRadioConfiguration.onChanged]
  bool _onChangedEnabled = false;
  bool get onChangedEnabled => _onChangedEnabled;
  set onChangedEnabled(bool onChangedEnabled) {
    _onChangedEnabled = onChangedEnabled;
    notifyListeners();
  }
}
