part of 'myoro_button_widget_showcase_screen_view_model.dart';

/// State of [MyoroButtonWidgetShowcaseScreenViewModel].
final class MyoroButtonWidgetShowcaseScreenState extends ChangeNotifier {
  static const tooltipEnabledDefaultValue = false;
  static const backgroundColorBuilderEnabledDefaultValue = false;
  static const borderBuilderEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = true;
  static const onTapUpEnabledDefaultValue = true;

  /// [MyoroButtonConfiguration.tooltipConfiguration]
  bool _tooltipEnabled = tooltipEnabledDefaultValue;

  /// [_tooltipEnabled] getter.
  bool get tooltipEnabled => _tooltipEnabled;

  /// [_tooltipEnabled] setter.
  set tooltipEnabled(bool tooltipEnabled) {
    _tooltipEnabled = tooltipEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.cursor]
  MouseCursor? _cursor;

  /// [_cursor] getter.
  MouseCursor? get cursor => _cursor;

  /// [_cursor] setter.
  set cursor(MouseCursor? cursor) {
    _cursor = cursor;
    notifyListeners();
  }

  /// [MyoroButtonThemeExtension.borderRadius]
  BorderRadius? _borderRadius;

  /// [_borderRadius] getter.
  BorderRadius? get borderRadius => _borderRadius;

  /// [_borderRadius] setter.
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// [MyoroButtonThemeExtension.backgroundIdleColor]
  Color? _backgroundIdleColor;

  /// [_backgroundIdleColor] getter.
  Color? get backgroundIdleColor => _backgroundIdleColor;

  /// [_backgroundIdleColor] setter.
  set backgroundIdleColor(Color? backgroundIdleColor) {
    _backgroundIdleColor = backgroundIdleColor;
    notifyListeners();
  }

  /// [MyoroButtonThemeExtension.backgroundHoverColor]
  Color? _backgroundHoverColor;

  /// [_backgroundHoverColor] getter.
  Color? get backgroundHoverColor => _backgroundHoverColor;

  /// [_backgroundHoverColor] setter.
  set backgroundHoverColor(Color? backgroundHoverColor) {
    _backgroundHoverColor = backgroundHoverColor;
    notifyListeners();
  }

  /// [MyoroButtonThemeExtension.backgroundTapColor]
  Color? _backgroundTapColor;

  /// [_backgroundTapColor] getter.
  Color? get backgroundTapColor => _backgroundTapColor;

  /// [_backgroundTapColor] setter.
  set backgroundTapColor(Color? backgroundTapColor) {
    _backgroundTapColor = backgroundTapColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderIdleColor]
  Color? _borderIdleColor;

  /// [_borderIdleColor] getter.
  Color? get borderIdleColor => _borderIdleColor;

  /// [_borderIdleColor] setter.
  set borderIdleColor(Color? borderIdleColor) {
    _borderIdleColor = borderIdleColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderHoverColor]
  Color? _borderHoverColor;

  /// [_borderHoverColor] getter.
  Color? get borderHoverColor => _borderHoverColor;

  /// [_borderHoverColor] setter.
  set borderHoverColor(Color? borderHoverColor) {
    _borderHoverColor = borderHoverColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderTapColor]
  Color? _borderTapColor;

  /// [_borderTapColor] getter.
  Color? get borderTapColor => _borderTapColor;

  /// [_borderTapColor] setter.
  set borderTapColor(Color? borderTapColor) {
    _borderTapColor = borderTapColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.onTapDown]
  bool _onTapDownEnabled = onTapDownEnabledDefaultValue;

  /// [_onTapDownEnabled] getter.
  bool get onTapDownEnabled => _onTapDownEnabled;

  /// [_onTapDownEnabled] setter.
  set onTapDownEnabled(bool onTapDownEnabled) {
    _onTapDownEnabled = onTapDownEnabled;
    notifyListeners;
  }

  /// [MyoroButtonConfiguration.onTapUp]
  bool _onTapUpEnabled = onTapUpEnabledDefaultValue;

  /// [_onTapUpEnabled] getter.
  bool get onTapUpEnabled => _onTapUpEnabled;

  /// [_onTapUpEnabled] setter.
  set onTapUpEnabled(bool onTapUpEnabled) {
    _onTapUpEnabled = onTapUpEnabled;
    notifyListeners();
  }
}
