import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel implements MyoroInputViewModelInterface {
  MyoroInputViewModel(MyoroInputConfiguration configuration, [MyoroInputFormatter? formatter]) {
    state = MyoroInputViewModelState(configuration, formatter);
    inputController.addListener(inputControllerListener);
  }

  late final MyoroInputViewModelState state;
  MyoroInputConfiguration get configuration => state.configuration;
  MyoroInputFormatter? get formatter => state.formatter;
  TextEditingController get inputController => state.inputController;
  ValueNotifier<bool> get enabledController => state.enabledController;
  bool get enabled => state.enabled;
  ValueNotifier<bool> get showClearTextButtonController => state.showClearTextButtonController;
  bool get showClearTextButton => state.showClearTextButton;

  @override
  void dispose() {
    (configuration.controller != null)
        ? inputController.removeListener(inputControllerListener)
        : inputController.dispose();
    enabledController.dispose();
    showClearTextButtonController.dispose();
  }

  @override
  void inputControllerListener() {
    showClearTextButtonController.value = showClearTextButton;
  }

  @override
  void checkboxOnChanged(bool value) {
    configuration.checkboxOnChanged!.call(value, inputController.text);
    enabledController.value = value;
  }

  @override
  void clearText() {
    formatter == null ? inputController.clear() : inputController.text = formatter!.initialText;
    configuration.onChanged?.call(inputController.text);
    configuration.onCleared?.call();
  }
}
