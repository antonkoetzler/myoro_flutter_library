import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when the checkbox next to the input is changed.
typedef MyoroInputCheckboxOnChanged = void Function(bool enabled, String text);

/// Function used for making the [MyoroInput] a search box. Executes everytime the input is changed.
typedef MyoroInputSearchRequest = FutureOr<List<String>> Function(String text);

/// Function executed when a [Form] is triggered.
typedef MyoroInputValidation = String? Function(String text);

/// Function executed when the enter key is pressed.
typedef MyoroInputOnFieldSubmitted = void Function(String text);

/// Function executed when the input changed.
typedef MyoroInputOnChanged = void Function(String text);

/// Model to load all of the configurable arguments of [MyoroInput].
final class MyoroInputConfiguration extends Equatable {
  static const inputStyleDefaultValue = MyoroInputStyleEnum.outlined;
  static const textAlignDefaultValue = TextAlign.start;
  static const contentPaddingDefaultValue = EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5);

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
  final bool? enabled;

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
    this.enabled,
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
      textAlign = TextAlign.values[faker.randomGenerator.integer(TextAlign.values.length)],
      inputTextStyle = null,
      label = faker.lorem.word(),
      placeholder = faker.lorem.word(),
      labelTextStyle = null,
      contentPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)),
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

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    bool inputTextStyleProvided = true,
    String? label,
    bool labelProvided = true,
    String? placeholder,
    bool placeholderProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    EdgeInsets? contentPadding,
    InputBorder? border,
    bool borderProvided = true,
    Widget? suffix,
    bool suffixProvided = true,
    bool? enabled,
    bool enabledProvided = true,
    bool? readOnly,
    bool readOnlyProvided = true,
    bool? autofocus,
    bool autofocusProvided = true,
    bool? showClearTextButton,
    bool showClearTextButtonProvided = true,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    bool checkboxOnChangedProvided = true,
    MyoroInputValidation? validation,
    bool validationProvided = true,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    bool onFieldSubmittedProvided = true,
    MyoroInputOnChanged? onChanged,
    bool onChangedProvided = true,
    VoidCallback? onCleared,
    bool onClearedProvided = true,
    FocusNode? focusNode,
    bool focusNodeProvided = true,
    TextEditingController? controller,
    bool controllerProvided = true,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle: inputTextStyleProvided ? (inputTextStyle ?? this.inputTextStyle) : null,
      label: labelProvided ? (label ?? this.label) : null,
      placeholder: placeholderProvided ? (placeholder ?? this.placeholder) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      contentPadding: contentPadding ?? this.contentPadding,
      border: borderProvided ? (border ?? this.border) : null,
      suffix: suffixProvided ? (suffix ?? this.suffix) : null,
      enabled: enabledProvided ? (enabled ?? this.enabled) : null,
      readOnly: readOnlyProvided ? (readOnly ?? this.readOnly) : null,
      autofocus: autofocusProvided ? (autofocus ?? this.autofocus) : null,
      showClearTextButton: showClearTextButtonProvided ? (showClearTextButton ?? this.showClearTextButton) : null,
      checkboxOnChanged: checkboxOnChangedProvided ? (checkboxOnChanged ?? this.checkboxOnChanged) : null,
      validation: validationProvided ? (validation ?? this.validation) : null,
      onFieldSubmitted: onFieldSubmittedProvided ? (onFieldSubmitted ?? this.onFieldSubmitted) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
      onCleared: onClearedProvided ? (onCleared ?? this.onCleared) : null,
      focusNode: focusNodeProvided ? (focusNode ?? this.focusNode) : null,
      controller: controllerProvided ? (controller ?? this.controller) : null,
    );
  }

  @override
  String toString() =>
      'MyoroInputConfiguration(\n'
      '  inputStyle: $inputStyle,\n'
      '  textAlign: $textAlign,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  label: $label,\n'
      '  placeholder: $placeholder,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  contentPadding: $contentPadding,\n'
      '  border: $border,\n'
      '  suffix: $suffix,\n'
      '  enabled: $enabled,\n'
      '  readOnly: $readOnly,\n'
      '  autofocus: $autofocus,\n'
      '  showClearTextButton: $showClearTextButton,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  validation: $validation,\n'
      '  onFieldSubmitted: $onFieldSubmitted,\n'
      '  onChanged: $onChanged,\n'
      '  onCleared: $onCleared,\n'
      '  focusNode: $focusNode,\n'
      '  controller: $controller,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      inputStyle,
      textAlign,
      inputTextStyle,
      label,
      placeholder,
      labelTextStyle,
      contentPadding,
      border,
      // suffix, ~ [Widget]s aren't great for comparison.
      enabled,
      readOnly,
      autofocus,
      showClearTextButton,
      checkboxOnChanged,
      validation,
      onFieldSubmitted,
      onChanged,
      onCleared,
      focusNode,
      controller,
    ];
  }

  InputBorder getBorder(BuildContext context) {
    return border ?? inputStyle.getBorder(context);
  }
}
