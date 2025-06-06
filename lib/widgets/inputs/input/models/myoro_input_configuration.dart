import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_input_configuration.g.dart';

/// Model to load all of the configurable arguments of [MyoroInput].
@myoroModel
class MyoroInputConfiguration with $MyoroInputConfigurationMixin {
  static const inputStyleDefaultValue = MyoroInputStyleEnum.outlined;
  static const textAlignDefaultValue = TextAlign.start;
  static const contentPaddingDefaultValue = EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5);
  static const enabledDefaultValue = true;

  /// Type of input.
  final MyoroInputStyleEnum inputStyle;

  /// [TextAlign] of the input.
  final TextAlign textAlign;

  /// Text style of the input.
  final TextStyle? inputTextStyle;

  /// Label displayed at the top of the input.
  final String? label;

  /// Placeholder of the input (hint text).
  final String? placeholder;

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// [EdgeInsets] within the input.
  final EdgeInsets contentPadding;

  /// [InputBorder] of the input.
  final InputBorder? border;

  /// Suffix [Widget] (i.e. a search button).
  final Widget? suffix;

  /// Whether the input is disabled (will be tilted for visual feedback).
  final bool enabled;

  /// Whether the input can be editted by the user.
  final bool? readOnly;

  /// Whether the input should focus when it is inserted into the widget tree.
  final bool? autofocus;

  /// Whether to show [_ClearTextButton] or not.
  final bool? showClearTextButton;

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

  /// [FocusNode] of the input to programmatically focus on it.
  final FocusNode? focusNode;

  /// Controller of the input.
  final TextEditingController? controller;

  const MyoroInputConfiguration({
    this.inputStyle = inputStyleDefaultValue,
    this.textAlign = textAlignDefaultValue,
    this.inputTextStyle,
    this.label,
    this.placeholder,
    this.labelTextStyle,
    this.contentPadding = contentPaddingDefaultValue,
    this.border,
    this.suffix,
    this.enabled = enabledDefaultValue,
    this.readOnly,
    this.autofocus,
    this.showClearTextButton,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.focusNode,
    this.controller,
  });

  MyoroInputConfiguration.fake()
    : inputStyle = MyoroInputStyleEnum.fake(),
      textAlign = myoroFake<TextAlign>(),
      inputTextStyle = null,
      label = faker.lorem.word(),
      placeholder = faker.lorem.word(),
      labelTextStyle = null,
      contentPadding = myoroFake<EdgeInsets>(),
      border = null,
      suffix = null,
      enabled = faker.randomGenerator.boolean(),
      readOnly = faker.randomGenerator.boolean(),
      autofocus = faker.randomGenerator.boolean(),
      showClearTextButton = faker.randomGenerator.boolean(),
      checkboxOnChanged = null,
      validation = null,
      onFieldSubmitted = null,
      onChanged = null,
      onCleared = null,
      focusNode = null,
      controller = null;

  InputBorder getBorder(BuildContext context) {
    return border ?? inputStyle.getBorder(context);
  }
}
