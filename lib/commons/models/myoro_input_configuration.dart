import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function executed when nthe checkbox next to the input is changed.
typedef MyoroInputCheckboxOnChanged = void Function(bool enabled, String text);

/// Function used for making the [MyoroInput] a search box.
///
/// Executes everytime the input is changed.
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

  /// Controller of the input.
  final TextEditingController? controller;

  const MyoroInputConfiguration({
    required this.inputStyle,
    this.inputTextStyle,
    this.label,
    this.placeholder,
    this.labelTextStyle,
    this.suffix,
    this.enabled,
    this.readOnly,
    this.checkboxOnChanged,
    this.validation,
    this.onFieldSubmitted,
    this.onChanged,
    this.controller,
  });

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextStyle? inputTextStyle,
    String? label,
    String? placeholder,
    TextStyle? labelTextStyle,
    Widget? suffix,
    bool? enabled,
    bool? readOnly,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    MyoroInputValidation? validation,
    MyoroInputOnFieldSubmitted? onFieldSubmitted,
    MyoroInputOnChanged? onChanged,
    TextEditingController? controller,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      label: label ?? this.label,
      placeholder: placeholder ?? this.placeholder,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      suffix: suffix ?? this.suffix,
      enabled: enabled ?? this.enabled,
      readOnly: readOnly ?? this.readOnly,
      checkboxOnChanged: checkboxOnChanged ?? this.checkboxOnChanged,
      validation: validation ?? this.validation,
      onFieldSubmitted: onFieldSubmitted ?? this.onFieldSubmitted,
      onChanged: onChanged ?? this.onChanged,
      controller: controller ?? this.controller,
    );
  }

  @override
  String toString() => ''
      'MyoroInputConfiguration(\n'
      '  inputStyle: $inputStyle,\n'
      '  inputTextStyle: $inputTextStyle,\n'
      '  label: $label,\n'
      '  placeholder: $placeholder,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  suffix: $suffix,\n'
      '  enabled: $enabled,\n'
      '  readOnly: $readOnly,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  validation: $validation,\n'
      '  onFieldSubmitted: $onFieldSubmitted,\n'
      '  onChanged: $onChanged,\n'
      '  controller: $controller,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      inputStyle,
      inputTextStyle,
      label,
      placeholder,
      labelTextStyle,
      suffix,
      enabled,
      readOnly,
      checkboxOnChanged,
      validation,
      onFieldSubmitted,
      onChanged,
      controller,
    ];
  }
}
