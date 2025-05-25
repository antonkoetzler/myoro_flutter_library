import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// View model of [MyoroAppBarWidgetShowcase].
final class MyoroAppBarWidgetShowcaseViewModel extends ChangeNotifier {
  /// [MyoroAppBarConfiguration.bordered]
  bool _bordered = MyoroAppBarConfiguration.borderedDefaultValue;
  bool get bordered => _bordered;
  set bordered(bool bordered) {
    _bordered = bordered;
    notifyListeners();
  }

  /// [MyoroAppBarConfiguration.backgroundColor]
  Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;
  set backgroundColor(Color? backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }
}
