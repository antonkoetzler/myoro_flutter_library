import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_state.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  MyoroInputViewModel(MyoroInputConfiguration configuration, MyoroInputFormatter? formatter)
    : _state = MyoroInputState(configuration, formatter) {
    state.controller.addListener(controllerListener);
  }

  /// State.
  final MyoroInputState _state;

  /// [_state] getter.
  MyoroInputState get state {
    return _state;
  }

  /// Dispose function.
  void dispose() {
    (state.configuration.controller != null)
        ? state.controller.removeListener(controllerListener)
        : state.controller.dispose();
    state.enabledNotifier.dispose();
    if (state.configuration.showClearTextButton) state.showClearTextButtonNotifier.dispose();
  }

  /// [_controller]'s listener.
  void controllerListener() {
    if (state.configuration.showClearTextButton) {
      state.showClearTextButton = state.controller.text.isNotEmpty;
    }
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value) {
    state.configuration.checkboxOnChanged!.call(value, state.controller.text);
    state.enabled = value;
  }

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText() {
    state.formatter == null ? state.controller.clear() : state.controller.text = state.formatter!.initialText;
    state.configuration.onChanged?.call(state.controller.text);
    state.configuration.onCleared?.call();
  }
}
