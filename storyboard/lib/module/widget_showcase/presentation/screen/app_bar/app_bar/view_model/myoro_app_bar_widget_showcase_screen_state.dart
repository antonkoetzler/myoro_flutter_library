import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// State of [MyoroAppBarWidgetShowcaseScreenViewModel].
final class MyoroAppBarWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroAppBar.showBottomDivider]
  bool _showBottomDivider = MyoroAppBar.showBottomDividerDefaultValue;

  /// [_showBottomDivider] getter.
  bool get showBottomDivider => _showBottomDivider;

  /// [_showBottomDivider] setter.
  set showBottomDivider(bool showBottomDivider) {
    _showBottomDivider = showBottomDivider;
    notifyListeners();
  }

  /// [MyoroAppBarThemeExtension.backgroundColor]
  Color? _backgroundColor;

  /// [_backgroundColor] getter.
  Color? get backgroundColor => _backgroundColor;

  /// [_backgroundColor] setter.
  set backgroundColor(Color? color) {
    _backgroundColor = color;
    notifyListeners();
  }
}
