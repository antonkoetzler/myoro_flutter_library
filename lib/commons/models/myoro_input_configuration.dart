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

  /// Whether the input is disabled (will be tilted for visual feedback).
  final bool? enabled;

  /// On changed when the checkbox next to the input is changed.
  ///
  /// The checkbox is enabled when this function is provided.
  ///
  /// When the checkbox is changed, the input will set it's [MyoroInputConfiguration.enabled] to false.
  final MyoroInputCheckboxOnChanged? checkboxOnChanged;

  /// Function used for making the [MyoroInput] a search box.
  final MyoroInputSearchRequest? searchRequest;

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
    this.enabled,
    this.checkboxOnChanged,
    this.searchRequest,
    this.validation,
    this.onChanged,
    this.controller,
  });

  MyoroInputConfiguration copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextStyle? inputTextStyle,
    String? label,
    TextStyle? labelTextStyle,
    bool? enabled,
    MyoroInputCheckboxOnChanged? checkboxOnChanged,
    MyoroInputSearchRequest? searchRequest,
    MyoroInputValidation? validation,
    MyoroInputOnChanged? onChanged,
    TextEditingController? controller,
  }) {
    return MyoroInputConfiguration(
      inputStyle: inputStyle ?? this.inputStyle,
      inputTextStyle: inputTextStyle ?? this.inputTextStyle,
      label: label ?? this.label,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      enabled: enabled ?? this.enabled,
      checkboxOnChanged: checkboxOnChanged ?? this.checkboxOnChanged,
      searchRequest: searchRequest ?? this.searchRequest,
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
      '  enabled: $enabled,\n'
      '  checkboxOnChanged: $checkboxOnChanged,\n'
      '  searchRequest: $searchRequest,\n'
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
      enabled,
      checkboxOnChanged,
      searchRequest,
      validation,
      onChanged,
      controller,
    ];
  }
}
