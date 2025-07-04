import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroSnackBarWidgetShowcaseScreen].
final class MyoroSnackBarWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroSnackBarConfiguration.snackBarType]
  MyoroSnackBarTypeEnum _snackBarType = MyoroSnackBarConfiguration.snackBarTypeDefaultValue;
  MyoroSnackBarTypeEnum get snackBarType => _snackBarType;
  set snackBarType(MyoroSnackBarTypeEnum snackBarType) {
    _snackBarType = snackBarType;
    notifyListeners();
  }

  /// [MyoroSnackBarConfiguration.showCloseButton]
  bool _showCloseButton = MyoroSnackBarConfiguration.showCloseButtonDefaultValue;
  bool get showCloseButton => _showCloseButton;
  set showCloseButton(bool showCloseButton) {
    _showCloseButton = showCloseButton;
    notifyListeners();
  }

  /// [MyoroSnackBarConfiguration.message]
  String _message = MyoroSnackBarConfiguration.messageDefaultValue;
  String get message => _message;
  set message(String message) {
    _message = message;
    notifyListeners();
  }

  /// [MyoroSnackBarConfiguration.child]
  bool _childEnabled = false;
  bool get childEnabled => _childEnabled;
  set childEnabled(bool childEnabled) {
    _childEnabled = childEnabled;
    notifyListeners();
  }
}
