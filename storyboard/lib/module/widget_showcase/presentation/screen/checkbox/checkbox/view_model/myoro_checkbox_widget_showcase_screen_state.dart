import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroCheckboxWidgetShowcaseScreenViewModel].
final class MyoroCheckboxWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCheckboxConfiguration.label]
  String _label = MyoroCheckboxConfiguration.labelDefaultValue;

  /// [_label] getter.
  String get label => _label;

  /// [_label] setter.
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [MyoroCheckboxThemeExtension.labelTextStyle]
  TextStyle? _labelTextStyle;

  /// [_labelTextStyle] getter.
  TextStyle? get labelTextStyle => _labelTextStyle;

  /// [_labelTextStyle] setter.
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }
}
