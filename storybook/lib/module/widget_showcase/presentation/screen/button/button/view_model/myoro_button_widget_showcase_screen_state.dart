part of 'myoro_button_widget_showcase_screen_view_model.dart';

/// State of [MyoroButtonWidgetShowcaseScreenViewModel].
final class MyoroButtonWidgetShowcaseScreenState extends ChangeNotifier {
  static const tooltipEnabledDefaultValue = false;
  static const backgroundColorBuilderEnabledDefaultValue = false;
  static const borderBuilderEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = true;
  static const onTapUpEnabledDefaultValue = true;
  static const isLoadingDefaultValue = false;

  /// [MyoroButton.tooltipConfiguration]
  bool _tooltipEnabled = tooltipEnabledDefaultValue;

  /// [MyoroButton.cursor]
  MouseCursor? _cursor;

  /// [MyoroButtonThemeExtension.borderRadius]
  BorderRadius? _borderRadius;

  /// [MyoroButtonThemeExtension.backgroundIdleColor]
  Color? _backgroundIdleColor;

  /// [MyoroButtonThemeExtension.backgroundHoverColor]
  Color? _backgroundHoverColor;

  /// [MyoroButtonThemeExtension.backgroundTapColor]
  Color? _backgroundTapColor;

  /// [MyoroButton.borderIdleColor]
  Color? _borderIdleColor;

  /// [MyoroButton.borderHoverColor]
  Color? _borderHoverColor;

  /// [MyoroButton.borderTapColor]
  Color? _borderTapColor;

  /// [MyoroButton.onTapDown]
  bool _onTapDownEnabled = onTapDownEnabledDefaultValue;

  /// [MyoroButton.onTapUp]
  bool _onTapUpEnabled = onTapUpEnabledDefaultValue;

  /// [MyoroButton.isLoading]
  bool _isLoading = isLoadingDefaultValue;

  /// [MyoroButtonThemeExtension.backgroundColor]
  Color? _backgroundColor;

  /// [MyoroButtonThemeExtension.contentColor]
  Color? _contentColor;

  /// [MyoroButtonThemeExtension.contentIdleColor]
  Color? _contentIdleColor;

  /// [MyoroButtonThemeExtension.contentHoverColor]
  Color? _contentHoverColor;

  /// [MyoroButtonThemeExtension.contentTapColor]
  Color? _contentTapColor;

  /// [MyoroButtonThemeExtension.borderWidth]
  double? _borderWidth;

  /// [MyoroButtonThemeExtension.borderColor]
  Color? _borderColor;

  /// [MyoroButton.borderBuilder] enabled state
  bool _borderBuilderEnabled = borderBuilderEnabledDefaultValue;

  /// [_tooltipEnabled] getter.
  bool get tooltipEnabled => _tooltipEnabled;

  /// [_cursor] getter.
  MouseCursor? get cursor => _cursor;

  /// [_borderRadius] getter.
  BorderRadius? get borderRadius => _borderRadius;

  /// [_backgroundIdleColor] getter.
  Color? get backgroundIdleColor => _backgroundIdleColor;

  /// [_backgroundHoverColor] getter.
  Color? get backgroundHoverColor => _backgroundHoverColor;

  /// [_backgroundTapColor] getter.
  Color? get backgroundTapColor => _backgroundTapColor;

  /// [_borderIdleColor] getter.
  Color? get borderIdleColor => _borderIdleColor;

  /// [_borderHoverColor] getter.
  Color? get borderHoverColor => _borderHoverColor;

  /// [_borderTapColor] getter.
  Color? get borderTapColor => _borderTapColor;

  /// [_onTapDownEnabled] getter.
  bool get onTapDownEnabled => _onTapDownEnabled;

  /// [_onTapUpEnabled] getter.
  bool get onTapUpEnabled => _onTapUpEnabled;

  /// [_isLoading] getter.
  bool get isLoading => _isLoading;

  /// [_backgroundColor] getter.
  Color? get backgroundColor => _backgroundColor;

  /// [_contentColor] getter.
  Color? get contentColor => _contentColor;

  /// [_contentIdleColor] getter.
  Color? get contentIdleColor => _contentIdleColor;

  /// [_contentHoverColor] getter.
  Color? get contentHoverColor => _contentHoverColor;

  /// [_contentTapColor] getter.
  Color? get contentTapColor => _contentTapColor;

  /// [_borderWidth] getter.
  double? get borderWidth => _borderWidth;

  /// [_borderColor] getter.
  Color? get borderColor => _borderColor;

  /// [_borderBuilderEnabled] getter.
  bool get borderBuilderEnabled => _borderBuilderEnabled;

  /// [_tooltipEnabled] setter.
  set tooltipEnabled(bool tooltipEnabled) {
    _tooltipEnabled = tooltipEnabled;
    notifyListeners();
  }

  /// [_cursor] setter.
  set cursor(MouseCursor? cursor) {
    _cursor = cursor;
    notifyListeners();
  }

  /// [_borderRadius] setter.
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [_backgroundIdleColor] setter.
  set backgroundIdleColor(Color? backgroundIdleColor) {
    _backgroundIdleColor = backgroundIdleColor;
    notifyListeners();
  }

  /// [_backgroundHoverColor] setter.
  set backgroundHoverColor(Color? backgroundHoverColor) {
    _backgroundHoverColor = backgroundHoverColor;
    notifyListeners();
  }

  /// [_backgroundTapColor] setter.
  set backgroundTapColor(Color? backgroundTapColor) {
    _backgroundTapColor = backgroundTapColor;
    notifyListeners();
  }

  /// [_borderIdleColor] setter.
  set borderIdleColor(Color? borderIdleColor) {
    _borderIdleColor = borderIdleColor;
    notifyListeners();
  }

  /// [_borderHoverColor] setter.
  set borderHoverColor(Color? borderHoverColor) {
    _borderHoverColor = borderHoverColor;
    notifyListeners();
  }

  /// [_borderTapColor] setter.
  set borderTapColor(Color? borderTapColor) {
    _borderTapColor = borderTapColor;
    notifyListeners();
  }

  /// [_onTapDownEnabled] setter.
  set onTapDownEnabled(bool onTapDownEnabled) {
    _onTapDownEnabled = onTapDownEnabled;
    notifyListeners();
  }

  /// [_onTapUpEnabled] setter.
  set onTapUpEnabled(bool onTapUpEnabled) {
    _onTapUpEnabled = onTapUpEnabled;
    notifyListeners();
  }

  /// [_isLoading] setter.
  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  /// [_backgroundColor] setter.
  set backgroundColor(Color? backgroundColor) {
    _backgroundColor = backgroundColor;
    notifyListeners();
  }

  /// [_contentColor] setter.
  set contentColor(Color? contentColor) {
    _contentColor = contentColor;
    notifyListeners();
  }

  /// [_contentIdleColor] setter.
  set contentIdleColor(Color? contentIdleColor) {
    _contentIdleColor = contentIdleColor;
    notifyListeners();
  }

  /// [_contentHoverColor] setter.
  set contentHoverColor(Color? contentHoverColor) {
    _contentHoverColor = contentHoverColor;
    notifyListeners();
  }

  /// [_contentTapColor] setter.
  set contentTapColor(Color? contentTapColor) {
    _contentTapColor = contentTapColor;
    notifyListeners();
  }

  /// [_borderWidth] setter.
  set borderWidth(double? borderWidth) {
    _borderWidth = borderWidth;
    notifyListeners();
  }

  /// [_borderColor] setter.
  set borderColor(Color? borderColor) {
    _borderColor = borderColor;
    notifyListeners();
  }

  /// [_borderBuilderEnabled] setter.
  set borderBuilderEnabled(bool borderBuilderEnabled) {
    _borderBuilderEnabled = borderBuilderEnabled;
    notifyListeners();
  }
}
