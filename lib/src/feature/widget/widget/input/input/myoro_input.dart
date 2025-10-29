import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
part '_widget/_checkbox.dart';
part '_widget/_clear_text_button.dart';
part '_widget/_label.dart';
part '_widget/_suffix_button.dart';
part '_widget/_text_form_field.dart';
part '_widget/_obscure_text_button.dart';

/// Generic input _
///
/// [MyoroInput] also serves as a base input for creating other inputs in the commons folder.
/// A [MyoroInputConfiguration] is passed to every other input [Widget] in the commons folder.
/// This means that [MyoroInput] should always be completely compatible with the other inputs.
class MyoroInput extends StatelessWidget {
  /// Default value for [inputStyle].
  static const inputStyleDefaultValue = MyoroInputStyleEnum.outlined;

  /// Default value for [label].
  static const labelDefaultValue = kMyoroEmptyString;

  /// Default value for [text].
  static const textDefaultValue = kMyoroEmptyString;

  /// Default value for [placeholder].
  static const placeholderDefaultValue = kMyoroEmptyString;

  /// Default value for [textAlign].
  static const textAlignDefaultValue = TextAlign.start;

  /// Default value for [enabled].
  static const enabledDefaultValue = true;

  /// Default value for [readOnly].
  static const readOnlyDefaultValue = false;

  /// Default value for [autofocus].
  static const autofocusDefaultValue = false;

  /// Default value for [showClearTextButton].
  static const showClearTextButtonDefaultValue = true;

  /// Default value for [obscureText].
  static const obscureTextDefaultValue = false;

  /// Default value for [showObscureTextButton].
  static const showObscureTextButtonDefaultValue = false;

  /// Default constructor.
  const MyoroInput({
    super.key,
    this.style = const MyoroInputStyle(),
    this.formatter,
    this.inputStyle = inputStyleDefaultValue,
    this.textAlign = textAlignDefaultValue,
    this.label = labelDefaultValue,
    this.text = textDefaultValue,
    this.placeholder = placeholderDefaultValue,
    this.prefix,
    this.suffix,
    this.enabled = enabledDefaultValue,
    this.readOnly = readOnlyDefaultValue,
    this.autofocus = autofocusDefaultValue,
    this.showClearTextButton = showClearTextButtonDefaultValue,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.inputKey,
    this.onTap,
    this.focusNode,
    this.inputController,
    this.obscureText = obscureTextDefaultValue,
    this.showObscureTextButton = showObscureTextButtonDefaultValue,
  }) : assert(
         !(text.length > 0 && inputController != null),
         '[MyoroInput]: [text] and [controller] cannot be provided together.',
       );

  /// Style.
  final MyoroInputStyle style;

  /// Formatters of the input.
  ///
  /// Stored here rather than in [configuration] to have named constructors that preload formatters.
  final MyoroInputFormatter? formatter;

  /// Type of input.
  final MyoroInputStyleEnum inputStyle;

  /// [TextAlign] of the input.
  final TextAlign textAlign;

  /// Label displayed at the top of the input.
  final String label;

  /// Text of the input if [controller] is not provided.
  final String text;

  /// Placeholder of the input (hint text).
  final String placeholder;

  /// Prefix [Widget] (i.e. a currency symbol).
  final Widget? prefix;

  /// Suffix [Widget] (i.e. a search button).
  final Widget? suffix;

  /// Whether the input is disabled (will be tilted for visual feedback).
  final bool enabled;

  /// Whether the input can be editted by the user.
  final bool readOnly;

  /// Whether the input should focus when it is inserted into the widget tree.
  final bool autofocus;

  /// Whether to show [_ClearTextButton] or not.
  final bool showClearTextButton;

  /// Whether to show [_ToggleHiddenButton] or not.
  final bool showObscureTextButton;

  /// On changed when the checkbox next to the input is changed.
  ///
  /// The checkbox is enabled when this function is provided.
  ///
  /// When the checkbox is changed, the input will set it's [MyoroInputConfiguration.enabled] to false.
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// Function executed when [GlobalKey<FormState>().currentState!.validate()] is called.
  ///
  /// Aka, called when a [MyoroFormController.finish] is executed.
  final MyoroInputValidation? validation;

  /// Function executed when enter is pressed.
  final MyoroInputOnFieldSubmitted? onFieldSubmitted;

  /// Function executed when the input is changed.
  final MyoroInputOnChanged? onChanged;

  /// Function executed when [_ClearTextButton] is pressed.
  final VoidCallback? onCleared;

  /// [Key] of the [TextFormField] for specific cases.
  final Key? inputKey;

  /// [TextFormField.onTap]
  final VoidCallback? onTap;

  /// [FocusNode] of the input to programmatically focus on it.
  final FocusNode? focusNode;

  /// Controller of the input.
  final TextEditingController? inputController;

  /// Whether the input should be obscured.
  final bool obscureText;

  @override
  Widget build(context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();
    final spacing = style.spacing ?? themeExtension.spacing ?? 0;

    return MultiProvider(
      providers: [
        Provider.value(value: style),
        Provider(
          create: (_) => MyoroInputViewModel(
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
          ),
          dispose: (_, v) => v.dispose(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final viewModel = context.read<MyoroInputViewModel>();
          final state = viewModel.state;
          final enabledController = state.enabledController;

          return ValueListenableBuilder(
            valueListenable: enabledController,
            builder: (_, enabled, _) {
              return Row(
                spacing: spacing,
                children: [
                  if (checkboxOnChanged != null) _Checkbox(enabled),
                  Expanded(child: _TextFormField(enabled)),
                  if (suffix != null) suffix!,
                ],
              );
            },
          );
        },
      ),
    );
  }
}
