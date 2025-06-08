import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_group_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCheckbox].
@immutable
@myoroThemeExtension
class MyoroGroupCheckboxThemeExtension extends ThemeExtension<MyoroGroupCheckboxThemeExtension>
    with _$MyoroGroupCheckboxThemeExtensionMixin {
  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  const MyoroGroupCheckboxThemeExtension({required this.spacing, required this.runSpacing});

  const MyoroGroupCheckboxThemeExtension.builder() : spacing = 5, runSpacing = 5;

  MyoroGroupCheckboxThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      runSpacing = faker.randomGenerator.decimal();

  @override
  MyoroGroupCheckboxThemeExtension lerp(covariant ThemeExtension<MyoroGroupCheckboxThemeExtension>? other, double t) {
    if (other is! MyoroGroupCheckboxThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }
}
