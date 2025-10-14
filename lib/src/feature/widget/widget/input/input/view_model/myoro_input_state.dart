part of 'myoro_input_view_model.dart';

/// State of [MyoroInputController].
class MyoroInputState {
  /// Creates a new instance of [MyoroInputState].
  MyoroInputState(MyoroInputConfiguration configuration, this._formatter)
    : _configurationController = ValueNotifier(configuration),
      _showClearTextButtonController = ValueNotifier(
        configuration.textProvided ? configuration.text.isNotEmpty : configuration.controller?.text.isNotEmpty ?? false,
      ),
      _enabledController = ValueNotifier(configuration.enabled),
      _obscureTextController = ValueNotifier(configuration.obscureText) {
    final textProvided = configuration.textProvided;
    if (_formatter != null && !textProvided) controller.text = _formatter.initialText;
    if (textProvided) controller.text = configuration.text;
  }

  /// Configuration.
  final ValueNotifier<MyoroInputConfiguration> _configurationController;

  /// Formatter.
  final MyoroInputFormatter? _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? localController;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledController;

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool> _showClearTextButtonController;

  /// [ValueNotifier] to keep track of whether or not to obscure the text.
  final ValueNotifier<bool> _obscureTextController;

  /// [_formatter] getter.
  MyoroInputFormatter? get formatter {
    return _formatter;
  }

  /// Getter of the designated [TextEditingController].
  TextEditingController get controller {
    return configuration.controller ?? (localController ??= TextEditingController());
  }

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    return _enabledController;
  }

  /// [_showClearTextButtonController] getter.
  ValueNotifier<bool> get showClearTextButtonController {
    return _showClearTextButtonController;
  }

  /// [_configurationController] getter.
  ValueNotifier<MyoroInputConfiguration> get configurationController {
    return _configurationController;
  }

  /// Configuration getter.
  MyoroInputConfiguration get configuration {
    return _configurationController.value;
  }

  /// Getter of [_enabledController]'s value.
  bool get enabled {
    return _enabledController.value;
  }

  /// Getter of [_showClearTextButtonController]'s value.
  bool get showClearTextButton {
    return _showClearTextButtonController.value;
  }

  /// [_obscureTextController] getter.
  ValueNotifier<bool> get obscureTextController {
    return _obscureTextController;
  }

  /// Getter of [_obscureTextController]'s value.
  bool get obscureText {
    return _obscureTextController.value;
  }

  /// Configuration setter.
  set configuration(MyoroInputConfiguration configuration) {
    _configurationController.value = configuration;
  }

  /// [_enabledController] setter.
  set enabled(bool enabled) {
    _enabledController.value = enabled;
  }

  /// [_showClearTextButtonController] setter.
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButtonController.value = showClearTextButton;
  }

  /// [_obscureTextController] setter.
  set obscureText(bool obscureText) {
    _obscureTextController.value = obscureText;
  }

  /// Dispose function.
  void dispose() {
    localController?.dispose();
    _enabledController.dispose();
    _showClearTextButtonController.dispose();
    _obscureTextController.dispose();
  }
}
