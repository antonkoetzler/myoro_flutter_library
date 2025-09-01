import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_style_variant_enum_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButtonStyleVariantEnum].
@immutable
@myoroThemeExtension
class MyoroButtonStyleVariantEnumThemeExtension extends ThemeExtension<MyoroButtonStyleVariantEnumThemeExtension>
    with _$MyoroButtonStyleVariantEnumThemeExtensionMixin {
  const MyoroButtonStyleVariantEnumThemeExtension({
    this.primaryIdleBackgroundColor,
    this.primaryTapBackgroundColor,
    this.primaryHoverBackgroundColor,
    this.primaryIdleContentColor,
    this.primaryTapContentColor,
    this.primaryHoverContentColor,
    this.primaryIdleBorderColor,
    this.primaryHoverBorderColor,
    this.primaryTapBorderColor,
    this.secondaryIdleBackgroundColor,
    this.secondaryTapBackgroundColor,
    this.secondaryHoverBackgroundColor,
    this.secondaryIdleContentColor,
    this.secondaryTapContentColor,
    this.secondaryHoverContentColor,
    this.secondaryIdleBorderColor,
    this.secondaryHoverBorderColor,
    this.secondaryTapBorderColor,
  });

  // coverage:ignore-start
  MyoroButtonStyleVariantEnumThemeExtension.fake()
    : primaryIdleBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryTapBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryHoverBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryIdleContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryTapContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryHoverContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryIdleBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryHoverBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      primaryTapBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryIdleBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryTapBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryHoverBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryIdleContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryTapContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryHoverContentColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryIdleBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryHoverBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      secondaryTapBorderColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;
  // coverage:ignore-end

  factory MyoroButtonStyleVariantEnumThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const primaryHoverBackgroundColorFactor = 0.7;
    const primaryTapBackgroundColorFactor = 0.5;
    const secondaryHoverBackgroundColorFactor = 0.15;
    const secondaryTapBackgroundColorFactor = 0.2;

    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return MyoroButtonStyleVariantEnumThemeExtension(
      primaryIdleBackgroundColor: primary,
      primaryHoverBackgroundColor: isDarkMode
          ? onPrimary.darken(primaryHoverBackgroundColorFactor)
          : onPrimary.brighten(primaryHoverBackgroundColorFactor),
      primaryTapBackgroundColor: isDarkMode
          ? onPrimary.darken(primaryTapBackgroundColorFactor)
          : onPrimary.brighten(primaryTapBackgroundColorFactor),
      primaryIdleContentColor: onPrimary,
      primaryHoverContentColor: onPrimary,
      primaryTapContentColor: onPrimary,
      primaryIdleBorderColor: onPrimary,
      primaryHoverBorderColor: onPrimary,
      primaryTapBorderColor: onPrimary,
      secondaryIdleBackgroundColor: onPrimary,
      secondaryHoverBackgroundColor: isDarkMode
          ? onPrimary.darken(secondaryHoverBackgroundColorFactor)
          : onPrimary.brighten(secondaryHoverBackgroundColorFactor),
      secondaryTapBackgroundColor: isDarkMode
          ? onPrimary.darken(secondaryTapBackgroundColorFactor)
          : onPrimary.brighten(secondaryTapBackgroundColorFactor),
      secondaryIdleContentColor: primary,
      secondaryHoverContentColor: primary,
      secondaryTapContentColor: primary,
    );
  }

  /// [MyoroTapStatusEnum.idle] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryIdleBackgroundColor;

  /// [MyoroTapStatusEnum.hover] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryHoverBackgroundColor;

  /// [MyoroTapStatusEnum.tap] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryTapBackgroundColor;

  /// [MyoroTapStatusEnum.idle] content [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryIdleContentColor;

  /// [MyoroTapStatusEnum.hover] content [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryHoverContentColor;

  /// [MyoroTapStatusEnum.tap] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? primaryTapContentColor;

  /// [MyoroTapStatusEnum.idle]'s [BoxBorder] color.
  final Color? primaryIdleBorderColor;

  /// [MyoroTapStatusEnum.hover]'s [BoxBorder] color.
  final Color? primaryHoverBorderColor;

  /// [MyoroTapStatusEnum.tap]'s [BoxBorder] color.
  final Color? primaryTapBorderColor;

  /// [MyoroTapStatusEnum.idle] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryIdleBackgroundColor;

  /// [MyoroTapStatusEnum.hover] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryHoverBackgroundColor;

  /// [MyoroTapStatusEnum.tap] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryTapBackgroundColor;

  /// [MyoroTapStatusEnum.idle] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryIdleContentColor;

  /// [MyoroTapStatusEnum.hover] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryHoverContentColor;

  /// [MyoroTapStatusEnum.tap] background [Color] of [MyoroButtonStyleVariantEnum.primary].
  final Color? secondaryTapContentColor;

  /// [MyoroTapStatusEnum.idle]'s [BoxBorder] color.
  final Color? secondaryIdleBorderColor;

  /// [MyoroTapStatusEnum.hover]'s [BoxBorder] color.
  final Color? secondaryHoverBorderColor;

  /// [MyoroTapStatusEnum.tap]'s [BoxBorder] color.
  final Color? secondaryTapBorderColor;

  @override
  MyoroButtonStyleVariantEnumThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonStyleVariantEnumThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonStyleVariantEnumThemeExtension) return this;
    final primaryIdleBackgroundColor = Color.lerp(this.primaryIdleBackgroundColor, other.primaryIdleBackgroundColor, t);
    final primaryTapBackgroundColor = Color.lerp(this.primaryTapBackgroundColor, other.primaryTapBackgroundColor, t);
    final primaryHoverBackgroundColor = Color.lerp(
      this.primaryHoverBackgroundColor,
      other.primaryHoverBackgroundColor,
      t,
    );
    final primaryIdleContentColor = Color.lerp(this.primaryIdleContentColor, other.primaryIdleContentColor, t);
    final primaryTapContentColor = Color.lerp(this.primaryTapContentColor, other.primaryTapContentColor, t);
    final primaryHoverContentColor = Color.lerp(this.primaryHoverContentColor, other.primaryHoverContentColor, t);
    final primaryIdleBorderColor = Color.lerp(this.primaryIdleBorderColor, other.primaryIdleBorderColor, t);
    final primaryHoverBorderColor = Color.lerp(this.primaryHoverBorderColor, other.primaryHoverBorderColor, t);
    final primaryTapBorderColor = Color.lerp(this.primaryTapBorderColor, other.primaryTapBorderColor, t);
    final secondaryIdleBackgroundColor = Color.lerp(
      this.secondaryIdleBackgroundColor,
      other.secondaryIdleBackgroundColor,
      t,
    );
    final secondaryTapBackgroundColor = Color.lerp(
      this.secondaryTapBackgroundColor,
      other.secondaryTapBackgroundColor,
      t,
    );
    final secondaryHoverBackgroundColor = Color.lerp(
      this.secondaryHoverBackgroundColor,
      other.secondaryHoverBackgroundColor,
      t,
    );
    final secondaryIdleContentColor = Color.lerp(this.secondaryIdleContentColor, other.secondaryIdleContentColor, t);
    final secondaryTapContentColor = Color.lerp(this.secondaryTapContentColor, other.secondaryTapContentColor, t);
    final secondaryIdleBorderColor = Color.lerp(this.secondaryIdleBorderColor, other.secondaryIdleBorderColor, t);
    final secondaryHoverBorderColor = Color.lerp(this.secondaryHoverBorderColor, other.secondaryHoverBorderColor, t);
    final secondaryTapBorderColor = Color.lerp(this.secondaryTapBorderColor, other.secondaryTapBorderColor, t);
    final secondaryHoverContentColor = Color.lerp(this.secondaryHoverContentColor, other.secondaryHoverContentColor, t);
    return copyWith(
      primaryIdleBackgroundColor: primaryIdleBackgroundColor,
      primaryIdleBackgroundColorProvided: primaryIdleBackgroundColor != null,
      primaryHoverBackgroundColor: primaryHoverBackgroundColor,
      primaryHoverBackgroundColorProvided: primaryHoverBackgroundColor != null,
      primaryTapBackgroundColor: primaryTapBackgroundColor,
      primaryTapBackgroundColorProvided: primaryTapBackgroundColor != null,
      primaryIdleContentColor: primaryIdleContentColor,
      primaryIdleContentColorProvided: primaryIdleContentColor != null,
      primaryHoverContentColor: primaryHoverContentColor,
      primaryHoverContentColorProvided: primaryHoverContentColor != null,
      primaryTapContentColor: primaryTapContentColor,
      primaryTapContentColorProvided: primaryTapContentColor != null,
      primaryIdleBorderColor: primaryIdleBorderColor,
      primaryIdleBorderColorProvided: primaryIdleBorderColor != null,
      primaryHoverBorderColor: primaryHoverBorderColor,
      primaryHoverBorderColorProvided: primaryHoverBorderColor != null,
      primaryTapBorderColor: primaryTapBorderColor,
      primaryTapBorderColorProvided: primaryTapBorderColor != null,
      secondaryIdleBackgroundColor: secondaryIdleBackgroundColor,
      secondaryIdleBackgroundColorProvided: secondaryIdleBackgroundColor != null,
      secondaryHoverBackgroundColor: secondaryHoverBackgroundColor,
      secondaryHoverBackgroundColorProvided: secondaryHoverBackgroundColor != null,
      secondaryTapBackgroundColor: secondaryTapBackgroundColor,
      secondaryTapBackgroundColorProvided: secondaryTapBackgroundColor != null,
      secondaryIdleContentColor: secondaryIdleContentColor,
      secondaryIdleContentColorProvided: secondaryIdleContentColor != null,
      secondaryHoverContentColor: secondaryHoverContentColor,
      secondaryHoverContentColorProvided: secondaryHoverContentColor != null,
      secondaryTapContentColor: secondaryTapContentColor,
      secondaryTapContentColorProvided: secondaryTapContentColor != null,
      secondaryIdleBorderColor: secondaryIdleBorderColor,
      secondaryIdleBorderColorProvided: secondaryIdleBorderColor != null,
      secondaryHoverBorderColor: secondaryHoverBorderColor,
      secondaryHoverBorderColorProvided: secondaryHoverBorderColor != null,
      secondaryTapBorderColor: secondaryTapBorderColor,
      secondaryTapBorderColorProvided: secondaryTapBorderColor != null,
    );
  }
}
