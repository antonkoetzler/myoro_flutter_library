import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when the input is changed to show a list of recommendations.
typedef MyoroInputSuggestionRequest = List<String> Function(String text);

/// Function executed when a [Form] is triggered.
typedef MyoroInputValidation = String? Function(String text);

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

  /// Text style of the label.
  final TextStyle? labelTextStyle;

  /// Search suggestions/recommendations function that is executed when the input is changed.
  final MyoroInputSuggestionRequest? suggestionRequest;

  /// Function executed when [GlobalKey<FormState>().currentState!.validate()] is called.
  ///
  /// Aka, called when a [MyoroFormController.finish] is executed.
  final MyoroInputValidation? validation;

  /// Function executed when the input is changed.
  final MyoroInputOnChanged? onChanged;

  /// Controller of the input.
  final TextEditingController? controller;

  const MyoroInputConfiguration({
    required this.inputStyle,
    this.inputTextStyle,
    this.label,
    this.labelTextStyle,
    this.suggestionRequest,
    this.validation,
    this.onChanged,
    this.controller,
  });

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextStyle? inputTextStyle,
    String? label,
    TextStyle? labelTextStyle,
    MyoroInputSuggestionRequest? suggestionRequest,
    MyoroInputValidation? validation,
    MyoroInputOnChanged? onChanged,
    TextEditingController? controller,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      label: label ?? this.label,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      suggestionRequest: suggestionRequest ?? this.suggestionRequest,
      validation: validation ?? this.validation,
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
      '  labelTextStyle: $labelTextStyle,\n'
      '  suggestionRequest: $suggestionRequest,\n'
      '  validation: $validation,\n'
      '  onChanged: $onChanged,\n'
      '  controller: $controller,\n'
      ');';

  @override
  List<Object?> get props {
    return [
      inputStyle,
      inputTextStyle,
      label,
      labelTextStyle,
      suggestionRequest,
      validation,
      onChanged,
      controller,
    ];
  }
}
