part of 'myoro_input_view_model.dart';

/// State of [MyoroInputController].
class MyoroInputState {
  MyoroInputState(this._configuration, this._formatter)
    : _showClearTextButtonNotifier = ValueNotifier(
        _configuration.textProvided
            ? _configuration.text.isNotEmpty
            : _configuration.controller?.text.isNotEmpty ?? false,
      ),
      _enabledNotifier = ValueNotifier(_configuration.enabled) {
    final textProvided = _configuration.textProvided;
    if (_formatter != null && !textProvided) controller.text = _formatter.initialText;
    if (textProvided) controller.text = _configuration.text;
  }

  /// Dispose function.
  void dispose() {
    _localController?.dispose();
    _enabledNotifier.dispose();
    _showClearTextButtonNotifier.dispose();
  }

  /// Configuration.
  MyoroInputConfiguration _configuration;
  MyoroInputConfiguration get configuration => _configuration;
  set configuration(MyoroInputConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    enabled = configuration.enabled;
    if (configuration.textProvided) controller.text = configuration.text;
  }

  /// Formatter.
  final MyoroInputFormatter? _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localController;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledNotifier;

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool> _showClearTextButtonNotifier;

  /// [_formatter] getter.
  MyoroInputFormatter? get formatter {
    return _formatter;
  }

  /// [_localController] getter.
  TextEditingController get controller {
    return configuration.controller ?? (_localController ??= TextEditingController());
  }

  /// [_enabledNotifier] getter.
  ValueNotifier<bool> get enabledNotifier {
    return _enabledNotifier;
  }

  /// Getter of [_enabledNotifier]'s value.
  bool get enabled {
    return _enabledNotifier.value;
  }

  /// [_showClearTextButtonNotifier] getter.
  ValueNotifier<bool> get showClearTextButtonNotifier {
    return _showClearTextButtonNotifier;
  }

  /// Getter of [_showClearTextButtonNotifier]'s value.
  bool get showClearTextButton {
    return _showClearTextButtonNotifier.value;
  }

  /// [_enabledNotifier] setter.
  set enabled(bool enabled) {
    _enabledNotifier.value = enabled;
  }

  /// [_showClearTextButtonNotifier] setter.
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButtonNotifier.value = showClearTextButton;
  }
}
