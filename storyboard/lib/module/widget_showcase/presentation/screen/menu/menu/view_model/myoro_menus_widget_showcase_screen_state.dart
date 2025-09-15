part of 'myoro_menus_widget_showcase_screen_view_model.dart';

/// State of [MyoroMenusWidgetShowcaseScreenViewModel].
final class MyoroMenusWidgetShowcaseScreenState extends ChangeNotifier {
  /// [MyoroMenuConfiguration.constraints]
  var _constraints = MyoroMenuConfiguration.constraintsDefaultValue;

  /// [_constraints] getter.
  BoxConstraints get constraints {
    return _constraints;
  }

  /// [_constraints] setter.
  set constraints(BoxConstraints constraints) {
    if (_constraints == constraints) return;
    _constraints = constraints;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.backgroundColor]
  Color? _backgroundColor;

  /// [_backgroundColor] getter.
  Color? get backgroundColor {
    return _backgroundColor;
  }

  /// [_backgroundColor] getter.
  set backgroundColor(Color? backgroundColor) {
    if (_backgroundColor == backgroundColor) return;
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.border]
  bool _borderEnabled = false;

  /// [_borderEnabled] getter.
  bool get borderEnabled {
    return _borderEnabled;
  }

  /// [_borderEnabled] setter.
  set borderEnabled(bool borderEnabled) {
    if (_borderEnabled == borderEnabled) return;
    _borderEnabled = borderEnabled;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.borderRadius]
  double _borderRadius = 0.0;

  /// [_borderRadius] getter.
  double get borderRadius {
    return _borderRadius;
  }

  /// [_borderRadius] setter.
  set borderRadius(double borderRadius) {
    if (_borderRadius == borderRadius) return;
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.onEndReachedRequest]
  bool _onEndReachedRequestEnabled = false;

  /// [_onEndReachedRequestEnabled] getter.
  bool get onEndReachedRequestEnabled => _onEndReachedRequestEnabled;

  /// [_onEndReachedRequestEnabled] setter
  set onEndReachedRequestEnabled(bool onEndReachedRequestEnabled) {
    if (_onEndReachedRequestEnabled == onEndReachedRequestEnabled) return;
    _onEndReachedRequestEnabled = onEndReachedRequestEnabled;
    notifyListeners();
  }

  /// [MyoroMenuConfiguration.searchCallback]
  bool _searchCallbackEnabled = false;

  /// [_searchCallbackEnabled] getter.
  bool get searchCallbackEnabled => _searchCallbackEnabled;

  /// [_searchCallbackEnabled] setter.
  set searchCallbackEnabled(bool searchCallbackEnabled) {
    if (_searchCallbackEnabled == searchCallbackEnabled) return;
    _searchCallbackEnabled = searchCallbackEnabled;
    notifyListeners();
  }

  // Theme Extension Properties

  /// [MyoroMenuThemeExtension.searchBarPadding]
  EdgeInsets? _searchBarPadding;
  EdgeInsets? get searchBarPadding => _searchBarPadding;
  set searchBarPadding(EdgeInsets? searchBarPadding) {
    _searchBarPadding = searchBarPadding;
    notifyListeners();
  }

  /// [MyoroMenuThemeExtension.searchBarInputStyle]
  MyoroInputStyleEnum? _searchBarInputStyle;
  MyoroInputStyleEnum? get searchBarInputStyle => _searchBarInputStyle;
  set searchBarInputStyle(MyoroInputStyleEnum? searchBarInputStyle) {
    _searchBarInputStyle = searchBarInputStyle;
    notifyListeners();
  }

  /// [MyoroMenuThemeExtension.itemBorderRadius]
  BorderRadius? _itemBorderRadius;
  BorderRadius? get itemBorderRadius => _itemBorderRadius;
  set itemBorderRadius(BorderRadius? itemBorderRadius) {
    _itemBorderRadius = itemBorderRadius;
    notifyListeners();
  }

  /// [MyoroMenuThemeExtension.dialogTextStyle]
  TextStyle? _dialogTextStyle;
  TextStyle? get dialogTextStyle => _dialogTextStyle;
  set dialogTextStyle(TextStyle? dialogTextStyle) {
    _dialogTextStyle = dialogTextStyle;
    notifyListeners();
  }

  /// [MyoroMenuThemeExtension.dialogTextLoaderPadding]
  EdgeInsets? _dialogTextLoaderPadding;
  EdgeInsets? get dialogTextLoaderPadding => _dialogTextLoaderPadding;
  set dialogTextLoaderPadding(EdgeInsets? dialogTextLoaderPadding) {
    _dialogTextLoaderPadding = dialogTextLoaderPadding;
    notifyListeners();
  }
}
