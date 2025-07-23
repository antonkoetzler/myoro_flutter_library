import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_group_radio_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroGroupRadio].
@immutable
@myoroThemeExtension
class MyoroGroupRadioThemeExtension extends ThemeExtension<MyoroGroupRadioThemeExtension>
    with _$MyoroGroupRadioThemeExtensionMixin {
  const MyoroGroupRadioThemeExtension({required this.spacing, required this.runSpacing});

  // coverage:ignore-start
  MyoroGroupRadioThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      runSpacing = faker.randomGenerator.decimal();
  // coverage:ignore-end

  const MyoroGroupRadioThemeExtension.builder() : spacing = 5, runSpacing = 5;

  /// Main axis spacing in between each checkbox.
  final double spacing;

  /// Cross axis spacing in between each checkbox.
  final double runSpacing;

  @override
  MyoroGroupRadioThemeExtension lerp(covariant ThemeExtension<MyoroGroupRadioThemeExtension>? other, double t) {
    if (other is! MyoroGroupRadioThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      runSpacing: lerpDouble(runSpacing, other.runSpacing, t),
    );
  }
}
