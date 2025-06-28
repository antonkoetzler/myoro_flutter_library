import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroInputController].
class MyoroInputViewModelState {
  MyoroInputViewModelState(this._configuration, this._formatter) {
    _enabledController = ValueNotifier(_configuration.enabled);
    showClearTextButtonController = ValueNotifier<bool>(showClearTextButton);
    if (_formatter != null && inputController.text.isEmpty) {
      inputController.text = _formatter.initialText;
    }
  }

  /// Configuration.
  MyoroInputConfiguration _configuration;
  MyoroInputConfiguration get configuration => _configuration;
  set configuration(MyoroInputConfiguration configuration) {
    if (_configuration == configuration) return;
    _configuration = configuration;
    _enabledController.value = configuration.enabled;
  }

  /// Formatter.
  final MyoroInputFormatter? _formatter;
  MyoroInputFormatter? get formatter => _formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  late final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => _enabledController.value;

  /// [ValueNotifier] to keep track of whether or not to show
  /// [_ClearTextButton] in [TextFormField.decoration.suffix].
  late final ValueNotifier<bool> showClearTextButtonController;
  bool get showClearTextButton {
    return configuration.showClearTextButton != false && inputController.text.isNotEmpty;
  }
}
