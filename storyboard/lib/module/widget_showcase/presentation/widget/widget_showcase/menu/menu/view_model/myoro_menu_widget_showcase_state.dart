import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroMenuWidgetShowcaseViewModel].
final class MyoroMenuWidgetShowcaseState extends ChangeNotifier {
  /// [MyoroMenuConfiguration.constraints]
  BoxConstraints _constraints = MyoroMenuConfiguration.constraintsDefaultValue;
  BoxConstraints get constraints => _constraints;
  set constraints(BoxConstraints constraints) {
    _constraints = constraints;
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
