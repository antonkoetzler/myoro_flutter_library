part of 'padding_widget_showcase_option_view_model.dart';

/// State of [PaddingWidgetShowcaseOptionViewModel].
final class PaddingWidgetShowcaseOptionState {
  /// Creates a new instance of [PaddingWidgetShowcaseOptionState].
  PaddingWidgetShowcaseOptionState(this.configuration)
    : _enabledController = ValueNotifier(configuration.enabled),
      _paddingController = ValueNotifier(configuration.padding ?? EdgeInsets.zero) {
    final padding = configuration.padding;

    if (padding == null) {
      _modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
    } else if (padding.top == padding.bottom && padding.left == padding.right) {
      if (padding.top == padding.left) {
        _modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.all);
      } else {
        _modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
      }
    } else {
      _modeEnumController = ValueNotifier(PaddingWidgetShowcaseOptionEnum.only);
    }
  }

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  /// [ValueNotifier] of the [PaddingWidgetShowcaseOptionEnum] loaded.
  late final ValueNotifier<PaddingWidgetShowcaseOptionEnum> _modeEnumController;

  /// [ValueNotifier] controlling if the option is enabled.
  late final ValueNotifier<bool> _enabledController;

  /// Generated [EdgeInsets].
  late final ValueNotifier<EdgeInsets> _paddingController;

  /// [_modeEnumController] getter.
  ValueNotifier<PaddingWidgetShowcaseOptionEnum> get modeEnumController => _modeEnumController;

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController => _enabledController;

  /// [_paddingController] getter.
  ValueNotifier<EdgeInsets> get paddingController => _paddingController;

  /// [_modeEnumController]'s value getter.
  PaddingWidgetShowcaseOptionEnum get modeEnum => _modeEnumController.value;

  /// [_enabledController]'s value getter.
  bool get enabled => _enabledController.value;

  /// [_paddingController]'s value getter.
  EdgeInsets get padding => _paddingController.value;

  /// [_modeEnumController]'s value setter.
  set modeEnum(PaddingWidgetShowcaseOptionEnum value) => _modeEnumController.value = value;

  /// [_enabledController]'s value setter.
  set enabled(bool value) => _enabledController.value = value;

  /// [_paddingController]'s value setter.
  set padding(EdgeInsets value) => _paddingController.value = value;

  /// Dispose function.
  void dispose() {
    _modeEnumController.dispose();
    _enabledController.dispose();
    _paddingController.dispose();
  }
}
