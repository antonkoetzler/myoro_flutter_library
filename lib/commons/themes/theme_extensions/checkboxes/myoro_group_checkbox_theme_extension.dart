import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroCheckbox].
final class MyoroGroupCheckboxThemeExtension extends ThemeExtension<MyoroGroupCheckboxThemeExtension> {
  /// Default direction of the [MyoroGroupCheckbox].
  final Axis direction;

  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupCheckboxThemeExtension({
    required this.direction,
    required this.spacing,
    required this.runSpacing,
  });

  @override
  MyoroGroupCheckboxThemeExtension copyWith({
    Axis? direction,
    double? spacing,
    double? runSpacing,
  }) {
    return MyoroGroupCheckboxThemeExtension(
      direction: direction ?? this.direction,
      spacing: spacing ?? this.spacing,
      runSpacing: runSpacing ?? this.runSpacing,
    );
  }

  @override
  ThemeExtension<MyoroGroupCheckboxThemeExtension> lerp(
    covariant ThemeExtension<MyoroGroupCheckboxThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroGroupCheckboxThemeExtension) return this;
    return copyWith(
      direction: myoroLerp(direction, other.direction, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }
}
