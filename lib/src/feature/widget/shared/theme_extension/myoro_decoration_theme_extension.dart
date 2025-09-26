import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_decoration_theme_extension.g.dart';

/// Shared decoration [ThemeExtension].
@immutable
@myoroThemeExtension
final class MyoroDecorationThemeExtension extends ThemeExtension<MyoroDecorationThemeExtension> with _$MyoroDecorationThemeExtensionMixin {
  static const primaryHoverBackgroundColorFactor = 0.4;
  static const primaryTapBackgroundColorFactor = 0.2;
  static const secondaryHoverBackgroundColorFactor = 0.2;
  static const secondaryTapBackgroundColorFactor = 0.4;

  const MyoroDecorationThemeExtension({
    this.primaryIdleBackgroundColor,
    this.primaryHoverBackgroundColor,
    this.primaryTapBackgroundColor,
    this.secondaryIdleBackgroundColor,
    this.secondaryHoverBackgroundColor,
    this.secondaryTapBackgroundColor,
    this.primaryContentColor,
    this.secondaryContentColor,
    this.borderWidth,
    this.borderColor,
    this.borderRadius,
  });

  // coverage:ignore-start
  MyoroDecorationThemeExtension.fake()
    : primaryIdleBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryHoverBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryTapBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryIdleBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryHoverBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryTapBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  MyoroDecorationThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme)
    : primaryIdleBackgroundColor = colorScheme.primary,
      primaryHoverBackgroundColor = isDarkMode
          ? colorScheme.onPrimary.darken(primaryHoverBackgroundColorFactor)
          : colorScheme.onPrimary.brighten(primaryHoverBackgroundColorFactor),
      primaryTapBackgroundColor = isDarkMode
          ? colorScheme.onPrimary.darken(primaryTapBackgroundColorFactor)
          : colorScheme.onPrimary.brighten(primaryTapBackgroundColorFactor),
      secondaryIdleBackgroundColor = colorScheme.onPrimary,
      secondaryHoverBackgroundColor = isDarkMode
          ? colorScheme.onPrimary.darken(secondaryHoverBackgroundColorFactor)
          : colorScheme.onPrimary.brighten(secondaryHoverBackgroundColorFactor),
      secondaryTapBackgroundColor = isDarkMode
          ? colorScheme.onPrimary.darken(secondaryTapBackgroundColorFactor)
          : colorScheme.onPrimary.brighten(secondaryTapBackgroundColorFactor),
      primaryContentColor = colorScheme.onPrimary,
      secondaryContentColor = colorScheme.primary,
      borderWidth = kMyoroBorderWidth,
      borderColor = colorScheme.onPrimary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius);

  /// Primary background [Color] of [MyoroTapStatusEnum.idle].
  final Color? primaryIdleBackgroundColor;

  /// Primary background [Color] of [MyoroTapStatusEnum.hover].
  final Color? primaryHoverBackgroundColor;

  /// Primary background [Color] of [MyoroTapStatusEnum.tap].
  final Color? primaryTapBackgroundColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.idle].
  final Color? secondaryIdleBackgroundColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.hover].
  final Color? secondaryHoverBackgroundColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.tap].
  final Color? secondaryTapBackgroundColor;

  /// Primary content [Color].
  final Color? primaryContentColor;

  /// Secondary content [Color].
  final Color? secondaryContentColor;

  /// Border width.
  final double? borderWidth;

  /// Border [Color].
  final Color? borderColor;

  /// Border radius.
  final BorderRadius? borderRadius;

  @override
  MyoroDecorationThemeExtension lerp(covariant ThemeExtension<MyoroDecorationThemeExtension>? other, double t) {
    if (other is! MyoroDecorationThemeExtension) return this;

    final primaryIdleBackgroundColor = Color.lerp(this.primaryIdleBackgroundColor, other.primaryIdleBackgroundColor, t);
    final primaryHoverBackgroundColor = Color.lerp(this.primaryHoverBackgroundColor, other.primaryHoverBackgroundColor, t);
    final primaryTapBackgroundColor = Color.lerp(this.primaryTapBackgroundColor, other.primaryTapBackgroundColor, t);
    final secondaryIdleBackgroundColor = Color.lerp(this.secondaryIdleBackgroundColor, other.secondaryIdleBackgroundColor, t);
    final secondaryHoverBackgroundColor = Color.lerp(this.secondaryHoverBackgroundColor, other.secondaryHoverBackgroundColor, t);
    final secondaryTapBackgroundColor = Color.lerp(this.secondaryTapBackgroundColor, other.secondaryTapBackgroundColor, t);
    final primaryContentColor = Color.lerp(this.primaryContentColor, other.primaryContentColor, t);
    final secondaryContentColor = Color.lerp(this.secondaryContentColor, other.secondaryContentColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderColor = Color.lerp(this.borderColor, other.borderColor, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);

    return copyWith(
      primaryIdleBackgroundColor: primaryIdleBackgroundColor,
      primaryHoverBackgroundColor: primaryHoverBackgroundColor,
      primaryTapBackgroundColor: primaryTapBackgroundColor,
      secondaryIdleBackgroundColor: secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor: secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor: secondaryTapBackgroundColor,
      primaryContentColor: primaryContentColor,
      primaryContentColorProvided: primaryContentColor != null,
      secondaryContentColor: secondaryContentColor,
      secondaryContentColorProvided: secondaryContentColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
      borderColor: borderColor,
      borderColorProvided: borderColor != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
    );
  }
}
