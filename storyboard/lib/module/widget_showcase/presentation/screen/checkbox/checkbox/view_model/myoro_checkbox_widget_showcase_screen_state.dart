import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroCheckboxWidgetShowcaseScreenViewModel].
final class MyoroCheckboxWidgetShowcaseScreenState extends ChangeNotifier {
  String _label = MyoroCheckboxConfiguration.labelDefaultValue;
  String get label => _label;
  set label(String label) {
    _label = label;
    notifyListeners();
  }

  TextStyle? _labelTextStyle;
  TextStyle? get labelTextStyle => _labelTextStyle;
  set labelTextStyle(TextStyle? labelTextStyle) {
    _labelTextStyle = labelTextStyle;
    notifyListeners();
  }
}
