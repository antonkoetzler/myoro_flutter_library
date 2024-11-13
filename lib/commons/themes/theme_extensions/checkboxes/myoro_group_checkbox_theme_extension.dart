import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroCheckbox].
final class MyoroGroupCheckboxThemeExtension extends ThemeExtension<MyoroGroupCheckboxThemeExtension> {
  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupCheckboxThemeExtension({
    required this.spacing,
    required this.runSpacing,
  });

  @override
  MyoroGroupCheckboxThemeExtension copyWith({
    double? spacing,
    double? runSpacing,
  }) {
    return MyoroGroupCheckboxThemeExtension(
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
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }
}
