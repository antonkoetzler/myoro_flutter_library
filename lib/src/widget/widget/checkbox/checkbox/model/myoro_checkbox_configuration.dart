import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_configuration.g.dart';

/// Configuration of [MyoroCheckbox].
@myoroModel
class MyoroCheckboxConfiguration with _$MyoroCheckboxConfigurationMixin {
  static const labelDefaultValue = '';
  static const valueDefaultValue = false;

  /// Label at the right of the checkbox.
  final String label;

  /// Text style of [label].
  final TextStyle? labelTextStyle;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;

  const MyoroCheckboxConfiguration({
    this.label = labelDefaultValue,
    this.labelTextStyle,
    this.value = valueDefaultValue,
    this.onChanged,
  });

  factory MyoroCheckboxConfiguration.fake() {
    return MyoroCheckboxConfiguration(
      label: faker.randomGenerator.boolean() ? faker.lorem.word() : labelDefaultValue,
      labelTextStyle: faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      value: faker.randomGenerator.boolean(),
      onChanged: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }
}
