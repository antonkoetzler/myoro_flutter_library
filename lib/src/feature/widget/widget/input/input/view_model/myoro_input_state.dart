part of 'myoro_input_view_model.dart';

/// State of [MyoroInputController].
class MyoroInputState {
  /// Creates a new instance of [MyoroInputState].
  MyoroInputState(this._configuration, this._formatter)
    : _showClearTextButtonController = ValueNotifier(
        _configuration.textProvided
            ? _configuration.text.isNotEmpty
            : _configuration.controller?.text.isNotEmpty ?? false,
      ),
      _enabledController = ValueNotifier(_configuration.enabled) {
    final textProvided = _configuration.textProvided;
    if (_formatter != null && !textProvided) controller.text = _formatter.initialText;
    if (textProvided) controller.text = _configuration.text;
  }

  /// Configuration.
  MyoroInputConfiguration _configuration;

  /// Formatter.
  final MyoroInputFormatter? _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localController;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledController;

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool> _showClearTextButtonController;

  /// [_formatter] getter.
  MyoroInputFormatter? get formatter {
    return _formatter;
  }

  /// [_localController] getter.
  TextEditingController get controller {
    return configuration.controller ?? (_localController ??= TextEditingController());
  }

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    return _enabledController;
  }

  /// [_showClearTextButtonController] getter.
  ValueNotifier<bool> get showClearTextButtonController {
    return _showClearTextButtonController;
  }

  /// Configuration getter.
  MyoroInputConfiguration get configuration => _configuration;

  /// Getter of [_enabledController]'s value.
  bool get enabled {
    return _enabledController.value;
  }

  /// Getter of [_showClearTextButtonController]'s value.
  bool get showClearTextButton {
    return _showClearTextButtonController.value;
  }

  /// Configuration setter.
  set configuration(MyoroInputConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    enabled = configuration.enabled;
    if (configuration.textProvided) controller.text = configuration.text;
  }

  /// [_enabledController] setter.
  set enabled(bool enabled) {
    _enabledController.value = enabled;
  }

  /// [_showClearTextButtonController] setter.
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButtonController.value = showClearTextButton;
  }

  /// Dispose function.
  void dispose() {
    _localController?.dispose();
    _enabledController.dispose();
    _showClearTextButtonController.dispose();
  }
}
