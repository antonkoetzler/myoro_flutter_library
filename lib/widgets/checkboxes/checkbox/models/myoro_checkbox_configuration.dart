import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroCheckbox].
class MyoroCheckboxConfiguration extends Equatable {
  static const valueDefaultValue = false;

  /// Label at the right of the checkbox.
  final String? label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  const MyoroCheckboxConfiguration({this.label, this.labelTextStyle, this.value = valueDefaultValue, this.onChanged});

  factory MyoroCheckboxConfiguration.fake() {
    return MyoroCheckboxConfiguration(
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      value: faker.randomGenerator.boolean(),
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }

  MyoroCheckboxConfiguration copyWith({
    String? label,
    bool labelProvided = true,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? value,
    MyoroCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroCheckboxConfiguration(
      label: labelProvided ? (label ?? this.label) : null,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      value: value ?? this.value,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [label, labelTextStyle, value, onChanged];
  }

  @override
  String toString() =>
      'MyoroCheckboxConfiguration(\n'
      '  label: $label,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      '  value: $value,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
