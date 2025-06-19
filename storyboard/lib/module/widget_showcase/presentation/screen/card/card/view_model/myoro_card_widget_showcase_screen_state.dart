import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroCardWidgetShowcaseScreenViewModel].
final class MyoroCardWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroCardConfiguration.title]
  String _title = MyoroCardConfiguration.titleDefaultValue;
  String get title => _title;
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [MyoroCardConfiguration.titleTextStyle]
  TextStyle? _titleTextStyle;
  TextStyle? get titleTextStyle => _titleTextStyle;
  set titleTextStyle(TextStyle? titleTextStyle) {
    _titleTextStyle = titleTextStyle;
    notifyListeners();
  }

  /// [MyoroCardConfiguration.padding]
  EdgeInsets? _padding;
  EdgeInsets? get padding => _padding;
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [MyoroCardConfiguration.constraints]
  BoxConstraints _constraints = MyoroCardConfiguration.constraintsDefaultValue;
  BoxConstraints get constraints => _constraints;
  set constraints(BoxConstraints constraints) {
    _constraints = constraints;
    notifyListeners();
  }
}
