import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_state.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  /// Default constructor.
  MyoroInputViewModel(MyoroInputConfiguration configuration, MyoroInputFormatter? formatter)
    : _state = MyoroInputState(configuration, formatter) {
    state.controller.addListener(_controllerListener);
    state.configurationController.addListener(_configurationControllerListener);
  }

  /// State.
  final MyoroInputState _state;

  /// Dispose function.
  void dispose() {
    if (state.configuration.controller != null) {
      state.controller.removeListener(_controllerListener);
    }
    state.dispose();
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

  /// Toggles the obscure text state of the [MyoroInput].
  void obscureText() {
    state.obscureText = !state.obscureText;
  }

  /// [MyoroInputState.controller]'s listener.
  void _controllerListener() {
    if (state.configuration.showClearTextButton) {
      state.showClearTextButton = state.controller.text.isNotEmpty;
    }
  }

  /// [MyoroInputState.configurationController]'s listener.
  void _configurationControllerListener() {
    final configuration = _state.configuration;
    final controller = _state.controller;

    // Update the enabled state.
    _state.enabled = configuration.enabled;

    // Update the text if it is provided.
    if (configuration.textProvided) controller.text = configuration.text;

    // Update the obscure text state.
    _state.obscureText = configuration.obscureText;

    // Clean controller state.
    if (configuration.controller != null) {
      _state.controller.removeListener(_controllerListener);
      _state.localController?.dispose();
      _state.localController = null;
      _state.controller.addListener(_controllerListener);
    }
  }

  /// [_state] getter.
  MyoroInputState get state {
    return _state;
  }
}
