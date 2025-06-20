import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroModalWidgetShowcaseScreenViewModel].
final class MyoroModalWidgetShowcaseScreenState extends ChangeNotifier {
  /// [GlobalKey] to use when [_useRootNavigator] is true.
  final _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /// [MyoroModalConfiguration.barrierDismissable]
  bool _barrierDismissable = MyoroModalConfiguration.barrierDismissableDefaultValue;
  bool get barrierDismissable => _barrierDismissable;
  set barrierDismissable(bool barrierDismissable) {
    _barrierDismissable = barrierDismissable;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.useRootNavigator]
  bool _useRootNavigator = MyoroModalConfiguration.useRootNavigatorDefaultValue;
  bool get useRootNavigator => _useRootNavigator;
  set useRootNavigator(bool useRootNavigator) {
    _useRootNavigator = useRootNavigator;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.constraints]
  BoxConstraints? _constraints;
  BoxConstraints? get constraints => _constraints;
  set constraints(BoxConstraints? constraints) {
    _constraints = constraints;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.onClosed]
  bool _onClosedEnabled = false;
  bool get onClosedEnabled => _onClosedEnabled;
  set onClosedEnabled(bool onClosedEnabled) {
    _onClosedEnabled = onClosedEnabled;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.title]
  String _title = MyoroModalConfiguration.titleDefaultValue;
  String get title => _title;
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.showCloseButton]
  bool _showCloseButton = MyoroModalConfiguration.showCloseButtonDefaultValue;
  bool get showCloseButton => _showCloseButton;
  set showCloseButton(bool showCloseButton) {
    _showCloseButton = showCloseButton;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.padding]
  EdgeInsets? _padding;
  EdgeInsets? get padding => _padding;
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [MyoroModalConfiguration.closeButtonPadding]
  EdgeInsets? _closeButtonPadding;
  EdgeInsets? get closeButtonPadding => _closeButtonPadding;
  set closeButtonPadding(EdgeInsets? closeButtonPadding) {
    _closeButtonPadding = closeButtonPadding;
    notifyListeners();
  }
}
