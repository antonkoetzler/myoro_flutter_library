import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroInputController].
class MyoroInputViewModelState {
  MyoroInputViewModelState(this.configuration, this.formatter, VoidCallback inputControllerListener) {
    inputController.addListener(inputControllerListener);
    enabledController = ValueNotifier(configuration.enabled);
    showClearTextButtonController = ValueNotifier<bool>(showClearTextButton);
    if (formatter != null && inputController.text.isEmpty) {
      inputController.text = formatter!.initialText;
    }
  }

  /// Configuration.
  final MyoroInputConfiguration configuration;

  /// Formatter.
  MyoroInputFormatter? formatter;

  /// Input controller of the [MyoroInput].
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  late final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// [ValueNotifier] to keep track of whether or not to show
  /// [_ClearTextButton] in [TextFormField.decoration.suffix].
  late final ValueNotifier<bool> showClearTextButtonController;
  bool get showClearTextButton {
    return configuration.showClearTextButton != false && inputController.text.isNotEmpty;
  }
}
