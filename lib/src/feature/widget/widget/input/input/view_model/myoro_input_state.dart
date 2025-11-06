part of 'myoro_input_view_model.dart';

/// State of [MyoroInputViewModel].
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
    this.canShowClearTextButton,
    this.showObscureTextButton,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.inputKey,
    this.onTap,
    this.focusNode,
    TextEditingController? controller,
    bool obscureText,
  ) : _showClearTextButtonController = ValueNotifier(
        canShowClearTextButton
            ? controller != null
                  ? controller.text.isNotEmpty
                  : text.isNotEmpty
            : false,
      ),
      _enabledController = ValueNotifier(enabled),
      _obscureTextController = ValueNotifier(obscureText) {
    _controller = controller ?? (_localInputController ??= TextEditingController(text: text));
    if (formatter != null && text.isNotEmpty) _controller.text = formatter!.initialText;
  }

  /// Local [TextEditingController].
  TextEditingController? _localInputController;

  /// [TextEditingController].
  late TextEditingController _controller;

  /// [bool] to keep track of whether the input is
  /// enabled or not if the checkbox is enabled.
  final ValueNotifier<bool> _enabledController;

  /// [ValueNotifier] to keep track of whether or not to show
  /// the clear text button in [TextFormField]'s [InputDecoration.suffix].
  final ValueNotifier<bool> _showClearTextButtonController;

  /// [ValueNotifier] to keep track of whether or not to obscure the text.
  final ValueNotifier<bool> _obscureTextController;

  /// [MyoroInput.formatter]
  MyoroInputFormatter? formatter;

  /// [MyoroInput.inputStyle]
  MyoroInputStyleEnum inputStyle;

  /// [MyoroInput.textAlign]
  TextAlign textAlign;

  /// [MyoroInput.label]
  String label;

  /// [MyoroInput.placeholder]
  String placeholder;

  /// [MyoroInput.prefix]
  Widget? prefix;

  /// [MyoroInput.suffix]
  Widget? suffix;

  /// [MyoroInput.readOnly]
  bool readOnly;

  /// [MyoroInput.autofocus]
  bool autofocus;

  /// [MyoroInput.enableInteractiveSelection]
  bool enableInteractiveSelection;

  /// [MyoroInput.canShowClearTextButton]
  bool canShowClearTextButton;

  /// [MyoroInput.showObscureTextButton]
  bool showObscureTextButton;

  /// [MyoroInput.checkboxOnChanged]
  MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// [MyoroInput.validation]
  MyoroInputValidation? validation;

  /// [MyoroInput.onFieldSubmitted]
  MyoroInputOnFieldSubmitted? onFieldSubmitted;

  /// [MyoroInput.onChanged]
  MyoroInputOnChanged? onChanged;

  /// [MyoroInput.onCleared]
  VoidCallback? onCleared;

  /// [MyoroInput.inputKey]
  Key? inputKey;

  /// [MyoroInput.onTap]
  VoidCallback? onTap;

  /// [MyoroInput.focusNode]
  FocusNode? focusNode;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _localInputController = null;
    _enabledController.dispose();
    _showClearTextButtonController.dispose();
    _obscureTextController.dispose();
  }

  /// [_controller] getter.
  TextEditingController get controller {
    return _controller;
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

  /// [_controller] setter.
  set controller(TextEditingController? controller) {
    _localInputController?.dispose();
    _localInputController = null;
    _controller = controller ?? (_localInputController ??= TextEditingController());
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
