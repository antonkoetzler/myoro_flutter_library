part of '../myoro_input.dart';

/// State of [MyoroInputViewModel].
class MyoroInputViewModelState {
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

  MyoroInputViewModelState(this._configuration, [this._formatter]) {
    _enabledNotifier = ValueNotifier(_configuration.enabled);
    _showClearTextButtonNotifier = ValueNotifier<bool>(_showClearTextButton);
    if (_formatter != null && _controller.text.isEmpty) {
      _controller.text = _formatter!.initialText;
    }
  }

  /// Case for whether or not [_ClearTextButton] should be displayed.
  bool get _showClearTextButton {
    return _configuration.showClearTextButton != false && _controller.text.isNotEmpty;
  }
}
