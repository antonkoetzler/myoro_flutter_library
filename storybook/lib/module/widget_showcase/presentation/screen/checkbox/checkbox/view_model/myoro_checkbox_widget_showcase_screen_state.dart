import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

/// State of [MyoroCheckboxWidgetShowcaseScreenViewModel].
final class MyoroCheckboxWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCheckbox.label]
  String _label = MyoroCheckbox.labelDefaultValue;

  /// [MyoroCheckboxThemeExtension.labelTextStyle]
  TextStyle? _labelTextStyle;

  /// [_label] getter.
  String get label {
    return _label;
  }

  /// [_labelTextStyle] getter.
  TextStyle? get labelTextStyle {
    return _labelTextStyle;
  }

  /// [_label] setter.
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  /// [_labelTextStyle] setter.
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }
}
