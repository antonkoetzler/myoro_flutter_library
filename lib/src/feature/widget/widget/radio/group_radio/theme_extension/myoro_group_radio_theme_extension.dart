import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_radio_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroGroupRadio].
@immutable
@myoroThemeExtension
class MyoroGroupRadioThemeExtension extends ThemeExtension<MyoroGroupRadioThemeExtension>
    with _$MyoroGroupRadioThemeExtensionMixin
    implements MyoroGroupRadioStyle {
  const MyoroGroupRadioThemeExtension({this.spacing, this.runSpacing});

  // coverage:ignore-start
  MyoroGroupRadioThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      runSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  const MyoroGroupRadioThemeExtension.builder() : spacing = kMyoroMultiplier, runSpacing = kMyoroMultiplier;

  /// Main axis spacing in between each radio.
  @override
  final double? spacing;

  /// Cross axis spacing in between each radio.
  @override
  final double? runSpacing;

  @override
  MyoroGroupRadioThemeExtension lerp(covariant ThemeExtension<MyoroGroupRadioThemeExtension>? other, double t) {
    if (other is! MyoroGroupRadioThemeExtension) return this;

    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final runSpacing = lerpDouble(this.runSpacing, other.runSpacing, t);

    return copyWith(
      spacing: spacing,
      spacingProvided: spacing != null,
      runSpacing: runSpacing,
      runSpacingProvided: runSpacing != null,
    );
  }
}
