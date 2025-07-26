part of 'myoro_button_widget_showcase_screen_view_model.dart';

/// State of [MyoroButtonWidgetShowcaseScreenViewModel].
final class MyoroButtonWidgetShowcaseScreenState extends ChangeNotifier {
  static const tooltipEnabledDefaultValue = false;
  static const backgroundColorBuilderEnabledDefaultValue = false;
  static const borderBuilderEnabledDefaultValue = false;
  static const onTapDownEnabledDefaultValue = true;
  static const onTapUpEnabledDefaultValue = true;

  /// Whether or not to provide [MyoroButtonConfiguration.tooltipConfiguration].
  bool _tooltipEnabled = tooltipEnabledDefaultValue;
  bool get tooltipEnabled => _tooltipEnabled;
  set tooltipEnabled(bool tooltipEnabled) {
    _tooltipEnabled = tooltipEnabled;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.cursor]
  MouseCursor? _cursor;
  MouseCursor? get cursor => _cursor;
  set cursor(MouseCursor? cursor) {
    _cursor = cursor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderRadius]
  BorderRadius? _borderRadius;
  BorderRadius? get borderRadius => _borderRadius;
  set borderRadius(BorderRadius? borderRadius) {
    _borderRadius = borderRadius;
    notifyListeners();
  }

  /// If [MyoroButtonConfiguration.backgroundColorBuilder] is provided.
  bool _backgroundColorBuilderEnabled = backgroundColorBuilderEnabledDefaultValue;
  bool get backgroundColorBuilderEnabled => _backgroundColorBuilderEnabled;
  set backgroundColorBuilderEnabled(bool backgroundColorBuilderEnabled) {
    _backgroundColorBuilderEnabled = backgroundColorBuilderEnabled;
    if (!_backgroundColorBuilderEnabled) {
      _idleBackgroundColor = null;
      _hoverBackgroundColor = null;
      _tapBackgroundColor = null;
    }
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.idle].
  Color? _idleBackgroundColor;
  Color? get idleBackgroundColor => _idleBackgroundColor;
  set idleBackgroundColor(Color? idleBackgroundColor) {
    _idleBackgroundColor = idleBackgroundColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.hover].
  Color? _hoverBackgroundColor;
  Color? get hoverBackgroundColor => _hoverBackgroundColor;
  set hoverBackgroundColor(Color? hoverBackgroundColor) {
    _hoverBackgroundColor = hoverBackgroundColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.backgroundColorBuilder]'s [Color] for [MyoroTapStatusEnum.tap].
  Color? _tapBackgroundColor;
  Color? get tapBackgroundColor => _tapBackgroundColor;
  set tapBackgroundColor(Color? tapBackgroundColor) {
    _tapBackgroundColor = tapBackgroundColor;
    notifyListeners();
  }

  /// If [MyoroButtonConfiguration.borderBuilder] is provided.
  bool _borderBuilderEnabled = borderBuilderEnabledDefaultValue;
  bool get borderBuilderEnabled => _borderBuilderEnabled;
  set borderBuilderEnabled(bool borderBuilderEnabled) {
    _borderBuilderEnabled = borderBuilderEnabled;
    if (!_borderBuilderEnabled) {
      _idleBorderColor = null;
      _hoverBorderColor = null;
      _tapBackgroundColor = null;
    }
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.idle].
  Color? _idleBorderColor;
  Color? get idleBorderColor => _idleBorderColor;
  set idleBorderColor(Color? idleBorderColor) {
    _idleBorderColor = idleBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.hover].
  Color? _hoverBorderColor;
  Color? get hoverBorderColor => _hoverBorderColor;
  set hoverBorderColor(Color? hoverBorderColor) {
    _hoverBorderColor = hoverBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.borderBuilder]'s [Color] for [MyoroTapStatusEnum.tap].
  Color? _tapBorderColor;
  Color? get tapBorderColor => _tapBorderColor;
  set tapBorderColor(Color? tapBorderColor) {
    _tapBorderColor = tapBorderColor;
    notifyListeners();
  }

  /// [MyoroButtonConfiguration.onTapDown]
  bool _onTapDownEnabled = onTapDownEnabledDefaultValue;
  bool get onTapDownEnabled => _onTapDownEnabled;
  set onTapDownEnabled(bool onTapDownEnabled) {
    _onTapDownEnabled = onTapDownEnabled;
    notifyListeners;
  }

  /// [MyoroButtonConfiguration.onTapUp]
  bool _onTapUpEnabled = onTapUpEnabledDefaultValue;
  bool get onTapUpEnabled => _onTapUpEnabled;
  set onTapUpEnabled(bool onTapUpEnabled) {
    _onTapUpEnabled = onTapUpEnabled;
    notifyListeners();
  }
}
