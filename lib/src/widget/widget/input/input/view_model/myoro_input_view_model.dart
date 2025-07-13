import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_state.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  /// State.
  MyoroInputState? _state;

  /// [_state] getter.
  MyoroInputState get state {
    assert(_state != null, '[MyoroInputState.state]: [_state] has not been set yet.');
    return _state!;
  }

  /// Initialization function.
  void initialize(MyoroInputConfiguration configuration, [MyoroInputFormatter? formatter]) {
    _state = MyoroInputState(configuration, formatter);
    state.inputController.addListener(inputControllerListener);
  }

  /// Dispose function.
  void dispose() {
    (state.configuration.controller != null)
        ? state.inputController.removeListener(inputControllerListener)
        : state.inputController.dispose();
    state.enabledController.dispose();
    state.showClearTextButtonController.dispose();
  }

  /// [_controller]'s listener.
  void inputControllerListener() {
    state.showClearTextButtonController.value = state.showClearTextButton;
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value) {
    state.configuration.checkboxOnChanged!.call(value, state.inputController.text);
    state.enabledController.value = value;
  }

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText() {
    state.formatter == null ? state.inputController.clear() : state.inputController.text = state.formatter!.initialText;
    state.configuration.onChanged?.call(state.inputController.text);
    state.configuration.onCleared?.call();
  }
}
