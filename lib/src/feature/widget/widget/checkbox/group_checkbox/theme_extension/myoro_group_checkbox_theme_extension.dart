import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroGroupCheckbox].
@immutable
@myoroThemeExtension
class MyoroGroupCheckboxThemeExtension extends ThemeExtension<MyoroGroupCheckboxThemeExtension>
    with _$MyoroGroupCheckboxThemeExtensionMixin
    implements MyoroGroupCheckboxStyle {
  const MyoroGroupCheckboxThemeExtension({
    this.checkboxActiveColor,
    this.checkboxCheckColor,
    this.checkboxHoverColor,
    this.checkboxFocusColor,
    this.checkboxSplashRadius,
    this.labelTextStyle,
    this.labelMaxLines,
    this.spacing,
    this.runSpacing,
  });

  // coverage:ignore-start
  factory MyoroGroupCheckboxThemeExtension.fake() {
    return MyoroGroupCheckboxThemeExtension(
      checkboxActiveColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      labelTextStyle: faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines: faker.randomGenerator.boolean() ? faker.randomGenerator.integer(5) : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      runSpacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
    );
  }
  // coverage:ignore-end

  const MyoroGroupCheckboxThemeExtension.builder()
    : checkboxActiveColor = null,
      checkboxCheckColor = null,
      checkboxHoverColor = null,
      checkboxFocusColor = null,
      checkboxSplashRadius = null,
      labelTextStyle = null,
      labelMaxLines = null,
      spacing = kMyoroMultiplier,
      runSpacing = kMyoroMultiplier;

  @override
  final Color? checkboxActiveColor;

  @override
  final Color? checkboxCheckColor;

  @override
  final Color? checkboxHoverColor;

  @override
  final Color? checkboxFocusColor;

  @override
  final double? checkboxSplashRadius;

  @override
  final TextStyle? labelTextStyle;

  @override
  final int? labelMaxLines;

  @override
  final double? spacing;

  @override
  final double? runSpacing;

  @override
  MyoroGroupCheckboxThemeExtension lerp(covariant ThemeExtension<MyoroGroupCheckboxThemeExtension>? other, double t) {
    if (other is! MyoroGroupCheckboxThemeExtension) return this;

    final checkboxActiveColor = Color.lerp(this.checkboxActiveColor, other.checkboxActiveColor, t);
    final checkboxCheckColor = Color.lerp(this.checkboxCheckColor, other.checkboxCheckColor, t);
    final checkboxHoverColor = Color.lerp(this.checkboxHoverColor, other.checkboxHoverColor, t);
    final checkboxFocusColor = Color.lerp(this.checkboxFocusColor, other.checkboxFocusColor, t);
    final checkboxSplashRadius = lerpDouble(this.checkboxSplashRadius, other.checkboxSplashRadius, t);
    final labelTextStyle = TextStyle.lerp(this.labelTextStyle, other.labelTextStyle, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final runSpacing = lerpDouble(this.runSpacing, other.runSpacing, t);

    return copyWith(
      checkboxActiveColor: checkboxActiveColor,
      checkboxActiveColorProvided: checkboxActiveColor != null,
      checkboxCheckColor: checkboxCheckColor,
      checkboxCheckColorProvided: checkboxCheckColor != null,
      checkboxHoverColor: checkboxHoverColor,
      checkboxHoverColorProvided: checkboxHoverColor != null,
      checkboxFocusColor: checkboxFocusColor,
      checkboxFocusColorProvided: checkboxFocusColor != null,
      checkboxSplashRadius: checkboxSplashRadius,
      checkboxSplashRadiusProvided: checkboxSplashRadius != null,
      labelTextStyle: labelTextStyle,
      labelTextStyleProvided: labelTextStyle != null,
      labelMaxLines: labelMaxLines,
      labelMaxLinesProvided: labelMaxLines != null,
      spacing: spacing,
      spacingProvided: spacing != null,
      runSpacing: runSpacing,
      runSpacingProvided: runSpacing != null,
    );
  }
}
