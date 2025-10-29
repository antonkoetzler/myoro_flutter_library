import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroModalWidgetShowcaseScreenViewModel].
final class MyoroModalWidgetShowcaseScreenState extends ChangeNotifier {
  /// [GlobalKey] to use when [_useRootNavigator] is true.
  final _navigatorKey = GlobalKey<NavigatorState>();
  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  /// [MyoroModal.isBottomSheet]
  bool _isBottomSheet = false;
  bool get isBottomSheet => _isBottomSheet;
  set isBottomSheet(bool isBottomSheet) {
    _isBottomSheet = isBottomSheet;
    notifyListeners();
  }

  /// [MyoroModal.barrierDismissable]
  bool _barrierDismissable = MyoroModal.barrierDismissableDefaultValue;
  bool get barrierDismissable => _barrierDismissable;
  set barrierDismissable(bool barrierDismissable) {
    _barrierDismissable = barrierDismissable;
    notifyListeners();
  }

  /// [MyoroModal.useRootNavigator]
  bool _useRootNavigator = MyoroModal.useRootNavigatorDefaultValue;
  bool get useRootNavigator => _useRootNavigator;
  set useRootNavigator(bool useRootNavigator) {
    _useRootNavigator = useRootNavigator;
    notifyListeners();
  }

  /// [MyoroModal.constraints]
  BoxConstraints? _constraints;
  BoxConstraints? get constraints => _constraints;
  set constraints(BoxConstraints? constraints) {
    _constraints = constraints;
    notifyListeners();
  }

  /// [MyoroModal.onClosed]
  bool _onClosedEnabled = false;
  bool get onClosedEnabled => _onClosedEnabled;
  set onClosedEnabled(bool onClosedEnabled) {
    _onClosedEnabled = onClosedEnabled;
    notifyListeners();
  }

  /// [MyoroModal.title]
  String _title = MyoroModal.titleDefaultValue;
  String get title => _title;
  set title(String title) {
    _title = title;
    notifyListeners();
  }

  /// [MyoroModal.showCloseButton]
  bool _showCloseButton = MyoroModal.showCloseButtonDefaultValue;
  bool get showCloseButton => _showCloseButton;
  set showCloseButton(bool showCloseButton) {
    _showCloseButton = showCloseButton;
    notifyListeners();
  }

  /// [MyoroModal.padding]
  EdgeInsets? _padding;
  EdgeInsets? get padding => _padding;
  set padding(EdgeInsets? padding) {
    _padding = padding;
    notifyListeners();
  }

  /// [MyoroModal.closeButtonPadding]
  EdgeInsets? _closeButtonPadding;
  EdgeInsets? get closeButtonPadding => _closeButtonPadding;
  set closeButtonPadding(EdgeInsets? closeButtonPadding) {
    _closeButtonPadding = closeButtonPadding;
    notifyListeners();
  }

  // Theme Extension Properties

  /// [MyoroModalThemeExtension.primaryColor]
  Color? _primaryColor;
  Color? get primaryColor => _primaryColor;
  set primaryColor(Color? primaryColor) {
    _primaryColor = primaryColor;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.borderRadius]
  BorderRadius? _borderRadius;
  BorderRadius? get borderRadius => _borderRadius;
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.bottomSheetBorderRadius]
  BorderRadius? _bottomSheetBorderRadius;
  BorderRadius? get bottomSheetBorderRadius => _bottomSheetBorderRadius;
  set bottomSheetBorderRadius(BorderRadius? bottomSheetBorderRadius) {
    _bottomSheetBorderRadius = bottomSheetBorderRadius;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.border]
  Border? _border;
  Border? get border => _border;
  set border(Border? border) {
    _border = border;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.bottomSheetBorder]
  Border? _bottomSheetBorder;
  Border? get bottomSheetBorder => _bottomSheetBorder;
  set bottomSheetBorder(Border? bottomSheetBorder) {
    _bottomSheetBorder = bottomSheetBorder;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.spacing]
  double? _spacing;
  double? get spacing => _spacing;
  set spacing(double? spacing) {
    _spacing = spacing;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.titleTextStyle]
  TextStyle? _titleTextStyle;
  TextStyle? get titleTextStyle => _titleTextStyle;
  set titleTextStyle(TextStyle? titleTextStyle) {
    _titleTextStyle = titleTextStyle;
    notifyListeners();
  }

  /// [MyoroModalThemeExtension.closeButtonIconConfiguration]
  MyoroIconConfiguration? _closeButtonIconConfiguration;
  MyoroIconConfiguration? get closeButtonIconConfiguration => _closeButtonIconConfiguration;
  set closeButtonIconConfiguration(MyoroIconConfiguration? closeButtonIconConfiguration) {
    _closeButtonIconConfiguration = closeButtonIconConfiguration;
    notifyListeners();
  }
}
