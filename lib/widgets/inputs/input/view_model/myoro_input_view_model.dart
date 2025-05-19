part of '../myoro_input.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  /// Configuration.
  late MyoroInputConfiguration _configuration;

  /// Formatter.
  MyoroInputFormatter? _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localController;
  TextEditingController get _controller {
    return _configuration.controller ?? (_localController ??= TextEditingController());
  }

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  late final ValueNotifier<bool> _enabledNotifier;

  /// [ValueNotifier] to keep track of whether or not to show
  /// [_ClearTextButton] in [TextFormField.decoration.suffix].
  late final ValueNotifier<bool> _showClearTextButtonNotifier;

  MyoroInputViewModel(this._configuration, [this._formatter]) {
    _controller.addListener(_controllerListener);
    _enabledNotifier = ValueNotifier(_configuration.enabled);
    _showClearTextButtonNotifier = ValueNotifier<bool>(_showClearTextButton);
    if (_formatter != null && _controller.text.isEmpty) {
      _controller.text = _formatter!.initialText;
    }
  }

  /// Dispose function.
  void dispose() {
    (_configuration.controller != null) ? _controller.removeListener(_controllerListener) : _controller.dispose();
    _enabledNotifier.dispose();
    _showClearTextButtonNotifier.dispose();
  }

  /// [_controller]'s listener.
  void _controllerListener() {
    _showClearTextButtonNotifier.value = _showClearTextButton;
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void _checkboxOnChanged(bool value) {
    _configuration.checkboxOnChanged!.call(value, _controller.text);
    _enabledNotifier.value = value;
  }

  bool get _showClearTextButton {
    return _configuration.showClearTextButton != false && _controller.text.isNotEmpty;
  }
}
