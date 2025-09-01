import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_configuration.g.dart';

/// Configuration of [MyoroCheckbox].
@immutable
@myoroModel
class MyoroCheckboxConfiguration with _$MyoroCheckboxConfigurationMixin {
  static const labelDefaultValue = '';
  static const valueDefaultValue = false;

  const MyoroCheckboxConfiguration({
    this.label = labelDefaultValue,
    this.labelTextStyle,
    this.value = valueDefaultValue,
    this.onChanged,
  });

  // coverage:ignore-start
  MyoroCheckboxConfiguration.fake()
    : label = faker.randomGenerator.boolean() ? faker.lorem.word() : labelDefaultValue,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      value = faker.randomGenerator.boolean(),
      onChanged = faker.randomGenerator.boolean() ? ((_) {}) : null;
  // coverage:ignore-end

  /// Label at the right of the checkbox.
  final String label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  MyoroCheckboxConfiguration copyWith({
    String? label,
    TextStyle? labelTextStyle,
    bool labelTextStyleProvided = true,
    bool? value,
    MyoroCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroCheckboxConfiguration(
      label: label ?? this.label,
      labelTextStyle: labelTextStyleProvided ? (labelTextStyle ?? this.labelTextStyle) : null,
      value: value ?? this.value,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }
}
