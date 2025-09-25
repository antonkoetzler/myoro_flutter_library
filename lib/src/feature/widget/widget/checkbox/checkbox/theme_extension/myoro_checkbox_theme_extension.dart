import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_checkbox_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCheckbox]
@immutable
@myoroThemeExtension
class MyoroCheckboxThemeExtension extends ThemeExtension<MyoroCheckboxThemeExtension>
    with _$MyoroCheckboxThemeExtensionMixin
    implements MyoroCheckboxStyle {
  const MyoroCheckboxThemeExtension({
    this.checkboxActiveColor,
    this.checkboxCheckColor,
    this.checkboxHoverColor,
    this.checkboxFocusColor,
    this.checkboxSplashRadius,
    this.labelTextStyle,
    this.labelMaxLines,
    this.spacing,
  });

  // coverage:ignore-start
  MyoroCheckboxThemeExtension.fake()
    : checkboxActiveColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxCheckColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxFocusColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      checkboxSplashRadius = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      labelTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      labelMaxLines = faker.randomGenerator.boolean() ? faker.randomGenerator.integer(5) : null,
      spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  MyoroCheckboxThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : checkboxActiveColor = colorScheme.onPrimary,
      checkboxCheckColor = colorScheme.primary,
      checkboxHoverColor = MyoroColors.transparent,
      checkboxFocusColor = MyoroColors.transparent,
      checkboxSplashRadius = 0,
      labelTextStyle = textTheme.bodySmall!,
      labelMaxLines = 1,
      spacing = kMyoroMultiplier;

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
  MyoroCheckboxThemeExtension lerp(covariant ThemeExtension<MyoroCheckboxThemeExtension>? other, double t) {
    if (other is! MyoroCheckboxThemeExtension) return this;

    final checkboxActiveColor = Color.lerp(this.checkboxActiveColor, other.checkboxActiveColor, t);
    final checkboxCheckColor = Color.lerp(this.checkboxCheckColor, other.checkboxCheckColor, t);
    final checkboxHoverColor = Color.lerp(this.checkboxHoverColor, other.checkboxHoverColor, t);
    final checkboxFocusColor = Color.lerp(this.checkboxFocusColor, other.checkboxFocusColor, t);
    final checkboxSplashRadius = lerpDouble(this.checkboxSplashRadius, other.checkboxSplashRadius, t);
    final labelTextStyle = TextStyle.lerp(this.labelTextStyle, other.labelTextStyle, t);
    final labelMaxLines = lerpDouble(this.labelMaxLines?.toDouble(), other.labelMaxLines?.toDouble(), t)?.toInt();
    final spacing = lerpDouble(this.spacing, other.spacing, t);

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
    );
  }
}
