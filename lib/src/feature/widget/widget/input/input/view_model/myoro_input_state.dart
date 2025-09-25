part of 'myoro_input_view_model.dart';

/// State of [MyoroInputController].
class MyoroInputState {
  MyoroInputState(this._configuration, this._formatter)
    : _showClearTextButtonNotifier = _configuration.showClearTextButton
          ? ValueNotifier(
              _configuration.textProvided
                  ? _configuration.text.isNotEmpty
                  : _configuration.controller?.text.isNotEmpty ?? false,
            )
          : null,

      _enabledNotifier = ValueNotifier(_configuration.enabled) {
    final textProvided = _configuration.textProvided;
    if (_formatter != null && !textProvided) controller.text = _formatter.initialText;
    if (textProvided) controller.text = _configuration.text;
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
  MyoroInputFormatter? get formatter => _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localController;

  /// [_localController] getter.
  TextEditingController get controller {
    return configuration.controller ?? (_localController ??= TextEditingController());
  }

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledNotifier;

  /// [_enabledNotifier] getter.
  ValueNotifier<bool> get enabledNotifier {
    return _enabledNotifier;
  }

  /// Getter of [_enabledNotifier]'s value.
  bool get enabled {
    return _enabledNotifier.value;
  }

  /// [_enabledNotifier] setter.
  set enabled(bool enabled) {
    _enabledNotifier.value = enabled;
  }

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool>? _showClearTextButtonNotifier;

  /// [_showClearTextButtonNotifier] getter.
  ValueNotifier<bool> get showClearTextButtonNotifier {
    assert(
      _configuration.showClearTextButton,
      '[MyoroInputState.showClearTextButtonNotifier]: [_configuration.showClearTextButton] must be true.',
    );
    return _showClearTextButtonNotifier!;
  }

  /// [_showClearTextButtonNotifier] setter.
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButtonNotifier?.value = showClearTextButton;
  }
}
