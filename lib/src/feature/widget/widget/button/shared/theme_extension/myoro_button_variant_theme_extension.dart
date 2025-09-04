import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_variant_theme_extension.g.dart';

/// [ThemeExtension] to encapsulate all of the styles used in [MyoroButtonVariantEnum].
@immutable
@myoroThemeExtension
class MyoroButtonVariantThemeExtension extends ThemeExtension<MyoroButtonVariantThemeExtension>
    with _$MyoroButtonVariantThemeExtensionMixin {
  const MyoroButtonVariantThemeExtension({
    this.primaryBackgroundIdleColor,
    this.primaryBackgroundHoverColor,
    this.primaryBackgroundTapColor,
    this.primaryContentIdleColor,
    this.primaryContentHoverColor,
    this.primaryContentTapColor,
    this.secondaryBackgroundIdleColor,
    this.secondaryBackgroundHoverColor,
    this.secondaryBackgroundTapColor,
    this.secondaryContentIdleColor,
    this.secondaryContentHoverColor,
    this.secondaryContentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
  });

  // coverage:ignore-start
  MyoroButtonVariantThemeExtension.fake()
    : primaryBackgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryBackgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryBackgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryContentIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryContentHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryContentTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryBackgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryBackgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryBackgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryContentIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryContentHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryContentTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: kMyoroMultiplier * 5) : null,
      borderIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  factory MyoroButtonVariantThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const primaryBackgroundHoverColorFactor = 0.15;
    const primaryBackgroundTapColorFactor = 0.2;
    const secondaryBackgroundHoverColorFactor = 0.7;
    const secondaryBackgroundTapColorFactor = 0.5;

    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return MyoroButtonVariantThemeExtension(
      primaryBackgroundIdleColor: onPrimary,
      primaryBackgroundHoverColor: isDarkMode
          ? onPrimary.darken(primaryBackgroundHoverColorFactor)
          : onPrimary.brighten(primaryBackgroundHoverColorFactor),
      primaryBackgroundTapColor: isDarkMode
          ? onPrimary.darken(primaryBackgroundTapColorFactor)
          : onPrimary.brighten(primaryBackgroundTapColorFactor),
      primaryContentIdleColor: primary,
      primaryContentHoverColor: primary,
      primaryContentTapColor: primary,
      secondaryBackgroundIdleColor: primary,
      secondaryBackgroundHoverColor: isDarkMode
          ? onPrimary.darken(secondaryBackgroundHoverColorFactor)
          : onPrimary.brighten(secondaryBackgroundHoverColorFactor),
      secondaryBackgroundTapColor: isDarkMode
          ? onPrimary.darken(secondaryBackgroundTapColorFactor)
          : onPrimary.brighten(secondaryBackgroundTapColorFactor),
      secondaryContentIdleColor: onPrimary,
      secondaryContentHoverColor: onPrimary,
      secondaryContentTapColor: onPrimary,
      borderWidth: kMyoroBorderWidth,
      borderIdleColor: onPrimary,
      borderHoverColor: onPrimary,
      borderTapColor: onPrimary,
      borderRadius: BorderRadius.circular(kMyoroBorderRadius),
    );
  }

  /// [MyoroTapStatusEnum.idle]'s background [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryBackgroundIdleColor;

  /// [MyoroTapStatusEnum.hover]'s background [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryBackgroundHoverColor;

  /// [MyoroTapStatusEnum.tap]'s background [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryBackgroundTapColor;

  /// [MyoroTapStatusEnum.idle]'s content [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryContentIdleColor;

  /// [MyoroTapStatusEnum.hover]'s content [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryContentHoverColor;

  /// [MyoroTapStatusEnum.tap]'s content [Color] of [MyoroButtonVariantEnum.primary].
  final Color? primaryContentTapColor;

  /// [MyoroTapStatusEnum.idle]'s background [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryBackgroundIdleColor;

  /// [MyoroTapStatusEnum.hover]'s background [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryBackgroundHoverColor;

  /// [MyoroTapStatusEnum.tap]'s background [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryBackgroundTapColor;

  /// [MyoroTapStatusEnum.idle]'s content [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryContentIdleColor;

  /// [MyoroTapStatusEnum.hover]'s content [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryContentHoverColor;

  /// [MyoroTapStatusEnum.tap]'s content [Color] of [MyoroButtonVariantEnum.secondary].
  final Color? secondaryContentTapColor;

  /// [MyoroButtonVariantEnum.borderBuilder]'s width.
  final double? borderWidth;

  /// [BorderRadius].
  final BorderRadius? borderRadius;

  /// [MyoroButtonVariantEnum.borderBuilder]'s [Color] for [MyoroTapStatusEnum.idle].
  final Color? borderIdleColor;

  /// [MyoroButtonVariantEnum.borderBuilder]'s [Color] for [MyoroTapStatusEnum.hover].
  final Color? borderHoverColor;

  /// [MyoroButtonVariantEnum.borderBuilder]'s [Color] for [MyoroTapStatusEnum.tap].
  final Color? borderTapColor;

  @override
  MyoroButtonVariantThemeExtension lerp(covariant ThemeExtension<MyoroButtonVariantThemeExtension>? other, double t) {
    if (other is! MyoroButtonVariantThemeExtension) return this;

    final primaryBackgroundIdleColor = Color.lerp(this.primaryBackgroundIdleColor, other.primaryBackgroundIdleColor, t);
    final primaryBackgroundHoverColor = Color.lerp(
      this.primaryBackgroundHoverColor,
      other.primaryBackgroundHoverColor,
      t,
    );
    final primaryBackgroundTapColor = Color.lerp(this.primaryBackgroundTapColor, other.primaryBackgroundTapColor, t);
    final primaryContentIdleColor = Color.lerp(this.primaryContentIdleColor, other.primaryContentIdleColor, t);
    final primaryContentHoverColor = Color.lerp(this.primaryContentHoverColor, other.primaryContentHoverColor, t);
    final primaryContentTapColor = Color.lerp(this.primaryContentTapColor, other.primaryContentTapColor, t);
    final secondaryBackgroundIdleColor = Color.lerp(
      this.secondaryBackgroundIdleColor,
      other.secondaryBackgroundIdleColor,
      t,
    );
    final secondaryBackgroundHoverColor = Color.lerp(
      this.secondaryBackgroundHoverColor,
      other.secondaryBackgroundHoverColor,
      t,
    );
    final secondaryBackgroundTapColor = Color.lerp(
      this.secondaryBackgroundTapColor,
      other.secondaryBackgroundTapColor,
      t,
    );
    final secondaryContentIdleColor = Color.lerp(this.secondaryContentIdleColor, other.secondaryContentIdleColor, t);
    final secondaryContentHoverColor = Color.lerp(this.secondaryContentHoverColor, other.secondaryContentHoverColor, t);
    final secondaryContentTapColor = Color.lerp(this.secondaryContentTapColor, other.secondaryContentTapColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderIdleColor = Color.lerp(this.borderIdleColor, other.borderIdleColor, t);
    final borderHoverColor = Color.lerp(this.borderHoverColor, other.borderHoverColor, t);
    final borderTapColor = Color.lerp(this.borderTapColor, other.borderTapColor, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);

    return copyWith(
      primaryBackgroundIdleColor: primaryBackgroundIdleColor,
      primaryBackgroundIdleColorProvided: primaryBackgroundIdleColor != null,
      primaryBackgroundHoverColor: primaryBackgroundHoverColor,
      primaryBackgroundHoverColorProvided: primaryBackgroundHoverColor != null,
      primaryBackgroundTapColor: primaryBackgroundTapColor,
      primaryBackgroundTapColorProvided: primaryBackgroundTapColor != null,
      primaryContentIdleColor: primaryContentIdleColor,
      primaryContentIdleColorProvided: primaryContentIdleColor != null,
      primaryContentHoverColor: primaryContentHoverColor,
      primaryContentHoverColorProvided: primaryContentHoverColor != null,
      primaryContentTapColor: primaryContentTapColor,
      primaryContentTapColorProvided: primaryContentTapColor != null,
      secondaryBackgroundIdleColor: secondaryBackgroundIdleColor,
      secondaryBackgroundIdleColorProvided: secondaryBackgroundIdleColor != null,
      secondaryBackgroundHoverColor: secondaryBackgroundHoverColor,
      secondaryBackgroundHoverColorProvided: secondaryBackgroundHoverColor != null,
      secondaryBackgroundTapColor: secondaryBackgroundTapColor,
      secondaryBackgroundTapColorProvided: secondaryBackgroundTapColor != null,
      secondaryContentIdleColor: secondaryContentIdleColor,
      secondaryContentIdleColorProvided: secondaryContentIdleColor != null,
      secondaryContentHoverColor: secondaryContentHoverColor,
      secondaryContentHoverColorProvided: secondaryContentHoverColor != null,
      secondaryContentTapColor: secondaryContentTapColor,
      secondaryContentTapColorProvided: secondaryContentTapColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
      borderIdleColor: borderIdleColor,
      borderIdleColorProvided: borderIdleColor != null,
      borderHoverColor: borderHoverColor,
      borderHoverColorProvided: borderHoverColor != null,
      borderTapColor: borderTapColor,
      borderTapColorProvided: borderTapColor != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
    );
  }
}
