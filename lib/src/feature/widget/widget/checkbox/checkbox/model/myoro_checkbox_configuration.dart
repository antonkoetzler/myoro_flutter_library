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

  const MyoroCheckboxConfiguration({this.label = labelDefaultValue, this.value = valueDefaultValue, this.onChanged});

  MyoroCheckboxConfiguration.fake()
    : label = faker.randomGenerator.boolean() ? faker.lorem.word() : labelDefaultValue,
      value = faker.randomGenerator.boolean(),
      onChanged = faker.randomGenerator.boolean() ? ((_) {}) : null;

  /// Label at the right of the checkbox.
  final String label;

  /// Value of the [MyoroCheckbox].
  final bool value;

  /// Function that is executed when the checkbox is changed.
  final MyoroCheckboxOnChanged? onChanged;
}
