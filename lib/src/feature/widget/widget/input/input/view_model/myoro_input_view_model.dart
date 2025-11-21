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
    bool enableInteractiveSelection,
    bool canShowClearTextButton,
    bool showObscureTextButton,
    int minLines,
    int maxLines,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    MyoroInputValidation? validation,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    MyoroInputOnChanged? onChanged,
    VoidCallback? onCleared,
    Key? inputKey,
    VoidCallback? onTap,
    FocusNode? focusNode,
    TextEditingController? controller,
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
        enableInteractiveSelection,
        canShowClearTextButton,
        showObscureTextButton,
        minLines,
        maxLines,
        checkboxOnChanged,
        validation,
        onFieldSubmitted,
        onChanged,
        onCleared,
        inputKey,
        onTap,
        focusNode,
        controller,
        obscureText,
      ) {
    state.controller.addListener(_controllerListener);
  }

  /// State.
  final MyoroInputState _state;

  /// Dispose function.
  void dispose() {
    state.controller.removeListener(_controllerListener);
    state.dispose();
  }

  /// [MyoroCheckboxConfiguration.onChanged] of [_Checkbox].
  void checkboxOnChanged(bool value) {
    state.checkboxOnChanged!.call(value, state.controller.text);
    state.enabled = value;
  }

  /// Clears the [MyoroInput]'s text.
  ///
  /// If [MyoroControllerState] is not null, it clears
  /// the text to it's [MyoroInputFormatter.initialText].
  void clearText() {
    final controller = state.controller;
    state.formatter == null ? controller.clear() : controller.text = state.formatter!.initialText;
    state.onChanged?.call(controller.text);
    state.onCleared?.call();
  }

  /// Toggles the obscure text state of the [MyoroInput].
  void obscureText() {
    state.obscureText = !state.obscureText;
  }

  /// [MyoroInputState.controller]'s listener.
  void _controllerListener() {
    if (state.showClearTextButton) {
      state.showClearTextButton = state.controller.text.isNotEmpty;
    }
  }

  /// [_state] getter.
  MyoroInputState get state {
    return _state;
  }
}
