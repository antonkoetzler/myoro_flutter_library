import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_state.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  /// Default constructor.
  MyoroInputViewModel(
    MyoroInputFormatter? formatter,
    MyoroInputStyleEnum inputStyle,
    TextAlign textAlign,
    String label,
    String text,
    String placeholder,
    Widget? prefix,
    Widget? suffix,
    bool enabled,
    bool readOnly,
    bool autofocus,
    bool showClearTextButton,
    bool showObscureTextButton,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    MyoroInputValidation? validation,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    MyoroInputOnChanged? onChanged,
    VoidCallback? onCleared,
    Key? inputKey,
    VoidCallback? onTap,
    FocusNode? focusNode,
    TextEditingController? inputController,
    bool obscureText,
  ) : _state = MyoroInputState(
        formatter,
        inputStyle,
        textAlign,
        label,
        text,
        placeholder,
        prefix,
        suffix,
        enabled,
        readOnly,
        autofocus,
        showClearTextButton,
        showObscureTextButton,
        checkboxOnChanged,
        validation,
        onFieldSubmitted,
        onChanged,
        onCleared,
        inputKey,
        onTap,
        focusNode,
        inputController,
        obscureText,
      ) {
    state.inputController.addListener(_controllerListener);
  }

  /// State.
  final MyoroInputState _state;

  /// Dispose function.
  void dispose() {
    state.inputController.removeListener(_controllerListener);
    state.dispose();
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value) {
    state.checkboxOnChanged!.call(value, state.inputController.text);
    state.enabled = value;
  }

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText() {
    final inputController = state.inputController;
    state.formatter == null ? inputController.clear() : inputController.text = state.formatter!.initialText;
    state.onChanged?.call(inputController.text);
    state.onCleared?.call();
  }

  /// Toggles the obscure text state of the [MyoroInput].
  void obscureText() {
    state.obscureText = !state.obscureText;
  }

  /// [MyoroInputState.controller]'s listener.
  void _controllerListener() {
    if (state.showClearTextButton) {
      state.showClearTextButton = state.inputController.text.isNotEmpty;
    }
  }

  /// [_state] getter.
  MyoroInputState get state {
    return _state;
  }
}
