import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:provider/provider.dart';
part '../_widget/_checkbox.dart';
part '../_widget/_clear_text_button.dart';
part '../_widget/_suffix_button.dart';
part '../_widget/_text_form_field.dart';
part '../_widget/_obscure_text_button.dart';
part '../_widget/_myoro_input_state.dart';

/// Generic input.
class MyoroInput extends StatefulWidget {
  /// Default value for [style].
  static const styleDefaultValue = MyoroInputStyle();

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

  /// Default value for [enableInteractiveSelection].
  static const enableInteractiveSelectionDefaultValue = true;

  /// Default value for [canShowClearTextButton].
  static const canShowClearTextButtonDefaultValue = true;

  /// Default value for [obscureText].
  static const obscureTextDefaultValue = false;

  /// Default value for [showObscureTextButton].
  static const showObscureTextButtonDefaultValue = false;

  /// Default value for [minLines].
  static const minLinesDefaultValue = 1;

  /// Default value for [maxLines].
  static const maxLinesDefaultValue = 1;

  /// Default constructor.
  const MyoroInput({
    super.key,
    this.style = styleDefaultValue,
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
    this.enableInteractiveSelection = enableInteractiveSelectionDefaultValue,
    this.canShowClearTextButton = canShowClearTextButtonDefaultValue,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.inputKey,
    this.onTap,
    this.focusNode,
    this.controller,
    this.obscureText = obscureTextDefaultValue,
    this.showObscureTextButton = showObscureTextButtonDefaultValue,
    this.minLines = minLinesDefaultValue,
    this.maxLines = maxLinesDefaultValue,
  }) : assert(
         !(text.length > 0 && controller != null),
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

  /// Whether the input should focus when it is inserted into the tree.
  final bool autofocus;

  /// Whether the input can be interacted with.
  final bool enableInteractiveSelection;

  /// Whether to show [_ClearTextButton] or not.
  final bool canShowClearTextButton;

  /// Whether to show [_ToggleHiddenButton] or not.
  final bool showObscureTextButton;

  /// Min lines.
  final int minLines;

  /// Max lines.
  final int maxLines;

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
  final TextEditingController? controller;

  /// Whether the input should be obscured.
  final bool obscureText;

  /// Create state function.
  @override
  State<MyoroInput> createState() => _MyoroInputState();
}
