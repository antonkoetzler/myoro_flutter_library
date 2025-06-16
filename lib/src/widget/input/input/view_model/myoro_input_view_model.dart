import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
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

  /// Dispose function.
  void dispose() {
    (configuration.controller != null)
        ? inputController.removeListener(inputControllerListener)
        : inputController.dispose();
    enabledController.dispose();
    showClearTextButtonController.dispose();
  }

  /// [_controller]'s listener.
  void inputControllerListener() {
    showClearTextButtonController.value = showClearTextButton;
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value) {
    configuration.checkboxOnChanged!.call(value, inputController.text);
    enabledController.value = value;
  }

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText() {
    formatter == null ? inputController.clear() : inputController.text = formatter!.initialText;
    configuration.onChanged?.call(inputController.text);
    configuration.onCleared?.call();
  }
}
