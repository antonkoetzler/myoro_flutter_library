import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroGroupCheckbox].
class MyoroGroupCheckboxConfiguration extends Equatable {
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
      onChanged = faker.randomGenerator.boolean() ? ((_, __) {}) : null;

  MyoroGroupCheckboxConfiguration copyWith({
    Axis? direction,
    double? spacing,
    bool spacingProvided = true,
    double? runSpacing,
    bool runSpacingProvided = true,
    MyoroGroupCheckboxOnChanged? onChanged,
    bool onChangedProvided = true,
  }) {
    return MyoroGroupCheckboxConfiguration(
      direction: direction ?? this.direction,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      runSpacing: runSpacingProvided ? (runSpacing ?? this.runSpacing) : null,
      onChanged: onChangedProvided ? (onChanged ?? this.onChanged) : null,
    );
  }

  @override
  List<Object?> get props {
    return [direction, spacing, runSpacing, onChanged];
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxConfiguration(\n'
      '  direction: $direction,\n'
      '  spacing: $spacing,\n'
      '  runSpacing: $runSpacing,\n'
      '  onChanged: $onChanged,\n'
      ');';
}
