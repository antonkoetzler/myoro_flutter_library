import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// ViewModel of [MyoroAppBarConfiguration].
final class MyoroAppBarWidgetShowcaseViewModel extends ChangeNotifier {
  /// [MyoroAppBarConfiguration.bordered] setter.
  bool _bordered = MyoroAppBarConfiguration.borderedDefaultValue;
  bool get bordered => _bordered;
  set bordered(bool bordered) {
    _bordered = bordered;
    notifyListeners();
  }

  /// [MyoroAppBarConfiguration.backgroundColor] setter.
  Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;
  set backgroundColor(Color? color) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }
}
