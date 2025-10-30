part of 'myoro_input_view_model.dart';

/// State of [MyoroInputController].
class MyoroInputState {
  /// Creates a new instance of [MyoroInputState].
  MyoroInputState(
    this.formatter,
    this.inputStyle,
    this.textAlign,
    this.label,
    String text,
    this.placeholder,
    this.prefix,
    this.suffix,
    bool enabled,
    this.readOnly,
    this.autofocus,
    this.enableInteractiveSelection,
    bool showClearTextButton,
    this.showObscureTextButton,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.inputKey,
    this.onTap,
    this.focusNode,
    TextEditingController? inputController,
    bool obscureText,
  ) : _showClearTextButtonController = ValueNotifier(
        inputController != null ? inputController.text.isNotEmpty : text.isNotEmpty,
      ),
      _enabledController = ValueNotifier(enabled),
      _obscureTextController = ValueNotifier(obscureText) {
    _inputController = inputController ?? (_localInputController ??= TextEditingController(text: text));
    if (formatter != null && text.isNotEmpty) _inputController.text = formatter!.initialText;
  }

  /// Local [TextEditingController].
  TextEditingController? _localInputController;

  /// [TextEditingController].
  late final TextEditingController _inputController;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledController;

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool> _showClearTextButtonController;

  /// [ValueNotifier] to keep track of whether or not to obscure the text.
  final ValueNotifier<bool> _obscureTextController;

  /// [MyoroInput.formatter]
  final MyoroInputFormatter? formatter;

  /// [MyoroInput.inputStyle]
  final MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.textAlign]
  final TextAlign textAlign;

  /// [MyoroInput.label]
  final String label;

  /// [MyoroInput.placeholder]
  final String placeholder;

  /// [MyoroInput.prefix]
  final Widget? prefix;

  /// [MyoroInput.suffix]
  final Widget? suffix;

  /// [MyoroInput.readOnly]
  final bool readOnly;

  /// [MyoroInput.autofocus]
  final bool autofocus;

  /// [MyoroInput.enableInteractiveSelection]
  final bool enableInteractiveSelection;

  /// [MyoroInput.showObscureTextButton]
  final bool showObscureTextButton;

  /// [MyoroInput.checkboxOnChanged]
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroInput.validation]
  final MyoroInputValidation? validation;

  /// [MyoroInput.onFieldSubmitted]
  final MyoroInputOnFieldSubmitted? onFieldSubmitted;

  /// [MyoroInput.onChanged]
  final MyoroInputOnChanged? onChanged;

  /// [MyoroInput.onCleared]
  final VoidCallback? onCleared;

  /// [MyoroInput.inputKey]
  final Key? inputKey;

  /// [MyoroInput.onTap]
  final VoidCallback? onTap;

  /// [MyoroInput.focusNode]
  final FocusNode? focusNode;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _enabledController.dispose();
    _showClearTextButtonController.dispose();
    _obscureTextController.dispose();
  }

  /// [_inputController] getter.
  TextEditingController get inputController {
    return _inputController;
  }

  /// [_enabledController] getter.
  ValueNotifier<bool> get enabledController {
    return _enabledController;
  }

  /// [_showClearTextButtonController] getter.
  ValueNotifier<bool> get showClearTextButtonController {
    return _showClearTextButtonController;
  }

  /// Getter of [_enabledController]'s value.
  bool get enabled {
    return _enabledController.value;
  }

  /// Getter of [_showClearTextButtonController]'s value.
  bool get showClearTextButton {
    return _showClearTextButtonController.value;
  }

  /// [_obscureTextController] getter.
  ValueNotifier<bool> get obscureTextController {
    return _obscureTextController;
  }

  /// Getter of [_obscureTextController]'s value.
  bool get obscureText {
    return _obscureTextController.value;
  }

  /// [_enabledController] setter.
  set enabled(bool enabled) {
    _enabledController.value = enabled;
  }

  /// [_showClearTextButtonController] setter.
  set showClearTextButton(bool showClearTextButton) {
    _showClearTextButtonController.value = showClearTextButton;
  }

  /// [_obscureTextController] setter.
  set obscureText(bool obscureText) {
    _obscureTextController.value = obscureText;
  }
}
