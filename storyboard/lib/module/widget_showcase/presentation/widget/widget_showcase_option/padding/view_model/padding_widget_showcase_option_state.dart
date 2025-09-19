part of 'padding_widget_showcase_option_view_model.dart';

/// State of [PaddingWidgetShowcaseOptionViewModel].
final class PaddingWidgetShowcaseOptionState {
  PaddingWidgetShowcaseOptionState(this.configuration)
    : _enabledNotifier = ValueNotifier(configuration.enabled),
      _paddingNotifier = ValueNotifier(configuration.padding ?? EdgeInsets.zero) {
    final padding = configuration.padding;

    if (padding == null) {
      _modeEnumNotifier = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
    } else if (padding.top == padding.bottom && padding.left == padding.right) {
      if (padding.top == padding.left) {
        _modeEnumNotifier = ValueNotifier(PaddingWidgetShowcaseOptionEnum.all);
      } else {
        _modeEnumNotifier = ValueNotifier(PaddingWidgetShowcaseOptionEnum.symmetric);
      }
    } else {
      _modeEnumNotifier = ValueNotifier(PaddingWidgetShowcaseOptionEnum.only);
    }
  }

  /// Configuration.
  final PaddingWidgetShowcaseOptionConfiguration configuration;

  /// [ValueNotifier] of the [PaddingWidgetShowcaseOptionEnum] loaded.
  late final ValueNotifier<PaddingWidgetShowcaseOptionEnum> _modeEnumNotifier;
  ValueNotifier<PaddingWidgetShowcaseOptionEnum> get modeEnumNotifier => _modeEnumNotifier;
  PaddingWidgetShowcaseOptionEnum get modeEnum => _modeEnumNotifier.value;
  set modeEnum(PaddingWidgetShowcaseOptionEnum value) => _modeEnumNotifier.value = value;

  /// [ValueNotifier] controlling if the option is enabled.
  late final ValueNotifier<bool> _enabledNotifier;
  ValueNotifier<bool> get enabledNotifier => _enabledNotifier;
  bool get enabled => _enabledNotifier.value;
  set enabled(bool value) => _enabledNotifier.value = value;

  /// Generated [EdgeInsets].
  late final ValueNotifier<EdgeInsets> _paddingNotifier;
  ValueNotifier<EdgeInsets> get paddingNotifier => _paddingNotifier;
  EdgeInsets get padding => _paddingNotifier.value;
  set padding(EdgeInsets value) => _paddingNotifier.value = value;

  /// Dispose function.
  void dispose() {
    _modeEnumNotifier.dispose();
    _enabledNotifier.dispose();
    _paddingNotifier.dispose();
  }
}
