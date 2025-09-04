import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_style.g.dart';

/// Style model of [MyoroGroupCheckbox].
@immutable
@myoroModel
class MyoroGroupCheckboxStyle with _$MyoroGroupCheckboxStyleMixin {
  const MyoroGroupCheckboxStyle({this.spacing, this.runSpacing});

  // coverage:ignore-start
  MyoroGroupCheckboxStyle.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null,
      runSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 10) : null;
  // coverage:ignore-end

  /// Spacing in between the checkboxes.
  final double? spacing;

  /// Spacing in between the checkboxes when the checkboxes are wrapping (cross axis spacing).
  final double? runSpacing;

  MyoroGroupCheckboxStyle copyWith({
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
  }) {
    return MyoroGroupCheckboxStyle(
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
    );
  }
}
