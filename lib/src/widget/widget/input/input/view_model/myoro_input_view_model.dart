import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroInput].
class MyoroInputViewModel {
  MyoroInputViewModel(MyoroInputConfiguration configuration, [MyoroInputFormatter? formatter]) {
    state = MyoroInputViewModelState(configuration, formatter);
    state.inputController.addListener(inputControllerListener);
  }

  late final MyoroInputViewModelState state;

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
