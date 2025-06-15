import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_configuration.g.dart';

/// Configuration of [MyoroGroupCheckbox].
@myoroModel
class MyoroGroupCheckboxConfiguration with _$MyoroGroupCheckboxConfigurationMixin {
  static const directionDefaultValue = Axis.vertical;

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping (cross axis spacing).
  final double? runSpacing;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;

  const MyoroGroupCheckboxConfiguration({
    this.direction = directionDefaultValue,
    this.spacing,
    this.runSpacing,
    this.onChanged,
  });

  MyoroGroupCheckboxConfiguration.fake()
    : direction = myoroFake<Axis>(),
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      runSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      onChanged = faker.randomGenerator.boolean() ? ((_, _) {}) : null;
}
