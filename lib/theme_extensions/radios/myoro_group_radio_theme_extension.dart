import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroGroupRadio].
final class MyoroGroupRadioThemeExtension
    extends ThemeExtension<MyoroGroupRadioThemeExtension> {
  /// Default direction of the [MyoroGroupCheckbox].
  final Axis direction;

  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupRadioThemeExtension({
    required this.direction,
    required this.spacing,
    required this.runSpacing,
  });

  MyoroGroupRadioThemeExtension.fake()
    : direction =
          Axis.values[faker.randomGenerator.integer(Axis.values.length)],
      spacing = faker.randomGenerator.decimal(),
      runSpacing = faker.randomGenerator.decimal();

  @override
  MyoroGroupRadioThemeExtension copyWith({
    Axis? direction,
    double? spacing,
    double? runSpacing,
  }) {
    return MyoroGroupRadioThemeExtension(
      direction: direction ?? this.direction,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  MyoroGroupRadioThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupRadioThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroGroupRadioThemeExtension) return this;
    return copyWith(
      direction: myoroLerp(direction, other.direction, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }
}
