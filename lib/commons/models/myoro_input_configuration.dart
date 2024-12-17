import 'dart:async';

import 'package:equatable/equatable.dart';
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
  /// Type of input.
  final MyoroInputStyleEnum inputStyle;

  /// [TextAlign] of the input.
  final TextAlign? textAlign;

  /// Text style of the input.
  final TextStyle? inputTextStyle;

  /// Label displayed at the top of the input.
  final String? label;

  /// Placeholder of the input (hint text).
  final String? placeholder;

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// Suffix [Widget] (i.e. a search button).
  final Widget? suffix;

  /// Whether the input is disabled (will be tilted for visual feedback).
  final bool? enabled;

  /// Whether the input can be editted by the user.
  final bool? readOnly;

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
    required this.inputStyle,
    this.textAlign,
    this.inputTextStyle,
    this.label,
    this.placeholder,
    this.labelTextStyle,
    this.suffix,
    this.enabled,
    this.readOnly,
    this.showClearTextButton,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.onCleared,
    this.focusNode,
    this.controller,
  });

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? textAlign,
    TextStyle? inputTextStyle,
    String? label,
    String? placeholder,
    TextStyle? labelTextStyle,
    Widget? suffix,
    bool? enabled,
    bool? readOnly,
    bool? showClearTextButton,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    MyoroInputValidation? validation,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    MyoroInputOnChanged? onChanged,
    VoidCallback? onCleared,
    FocusNode? focusNode,
    TextEditingController? controller,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      textAlign: textAlign ?? this.textAlign,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      label: label ?? this.label,
      placeholder: placeholder ?? this.placeholder,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      suffix: suffix ?? this.suffix,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      showClearTextButton: showClearTextButton ?? this.showClearTextButton,
      checkboxOnChanged: checkboxOnChanged ?? this.checkboxOnChanged,
      validation: validation ?? this.validation,
      onFieldSubmitted: onFieldSubmitted ?? this.onFieldSubmitted,
      onChanged: onChanged ?? this.onChanged,
      onCleared: onCleared ?? this.onCleared,
      focusNode: focusNode ?? this.focusNode,
      controller: controller ?? this.controller,
    );
  }

  @override
  String toString() => ''
      'MyoroInputConfiguration(\n'
      '  inputStyle: $inputStyle,\n'
      '  textAlign: $textAlign,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  label: $label,\n'
      '  placeholder: $placeholder,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  suffix: $suffix,\n'
      '  enabled: $enabled,\n'
      '  readOnly: $readOnly,\n'
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
      suffix,
      enabled,
      readOnly,
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
}
