import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroMenuWidgetShowcaseScreenViewModel].
final class MyoroMenuWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroMenuConfiguration.constraints]
  BoxConstraints _constraints = MyoroMenuConfiguration.constraintsDefaultValue;
  BoxConstraints get constraints => _constraints;
  set constraints(BoxConstraints constraints) {
    _constraints = constraints;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.backgroundColor]
  Color? _backgroundColor;
  Color? get backgroundColor => _backgroundColor;
  set backgroundColor(Color? backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.border]
  bool _borderEnabled = false;
  bool get borderEnabled => _borderEnabled;
  set borderEnabled(bool borderEnabled) {
    _borderEnabled = borderEnabled;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.borderRadius]
  BorderRadius? _borderRadius;
  BorderRadius? get borderRadius => _borderRadius;
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.onEndReachedRequest]
  bool _onEndReachedRequestEnabled = false;
  bool get onEndReachedRequestEnabled => _onEndReachedRequestEnabled;
  set onEndReachedRequestEnabled(bool onEndReachedRequestEnabled) {
    _onEndReachedRequestEnabled = onEndReachedRequestEnabled;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.searchCallback]
  bool _searchCallbackEnabled = false;
  bool get searchCallbackEnabled => _searchCallbackEnabled;
  set searchCallbackEnabled(bool searchCallbackEnabled) {
    _searchCallbackEnabled = searchCallbackEnabled;
    notifyListeners();
  }
}
