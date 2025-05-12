import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of the [Color]s used in [MyoroButtonVariantEnum].
@immutable
class MyoroButtonVariantThemeExtension extends ThemeExtension<MyoroButtonVariantThemeExtension> {
  /// Standard [BoxBorder].
  final BoxBorder border;

  /// [MyoroButtonVariantEnum.backgroundColorBuilder] of [MyoroButtonVariantEnum.primary].
  final Color primaryIdleBackgroundColor;
  final Color primaryHoverBackgroundColor;
  final Color primaryTapBackgroundColor;

  /// [MyoroButtonVariantEnum.contentColorBuilder] of [MyoroButtonVariantEnum.primary].
  final Color primaryIdleContentColor;
  final Color primaryHoverContentColor;
  final Color primaryTapContentColor;

  /// [MyoroButtonVariantEnum.backgroundColorBuilder] of [MyoroButtonVariantEnum.secondary].
  final Color secondaryIdleBackgroundColor;
  final Color secondaryHoverBackgroundColor;
  final Color secondaryTapBackgroundColor;

  /// [MyoroButtonVariantEnum.contentColorBuilder] of [MyoroButtonVariantEnum.secondary].
  final Color secondaryIdleContentColor;
  final Color secondaryHoverContentColor;
  final Color secondaryTapContentColor;

  const MyoroButtonVariantThemeExtension({
    required this.border,
    required this.primaryIdleBackgroundColor,
    required this.primaryHoverBackgroundColor,
    required this.primaryTapBackgroundColor,
    required this.primaryIdleContentColor,
    required this.primaryHoverContentColor,
    required this.primaryTapContentColor,
    required this.secondaryIdleBackgroundColor,
    required this.secondaryHoverBackgroundColor,
    required this.secondaryTapBackgroundColor,
    required this.secondaryIdleContentColor,
    required this.secondaryHoverContentColor,
    required this.secondaryTapContentColor,
  });

  MyoroButtonVariantThemeExtension.fake()
    : border = Border.all(
        width: faker.randomGenerator.decimal(scale: 10),
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      ),
      primaryIdleBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      primaryHoverBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      primaryTapBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      primaryIdleContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      primaryHoverContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      primaryTapContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryIdleBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryHoverBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryTapBackgroundColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryIdleContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryHoverContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      secondaryTapContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];

  factory MyoroButtonVariantThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const primaryHoverBackgroundColorFactor = 0.7;
    const primaryTapBackgroundColorFactor = 0.5;
    const secondaryHoverBackgroundColorFactor = 0.15;
    const secondaryTapBackgroundColorFactor = 0.2;

    final Color onPrimary = colorScheme.onPrimary;

    return MyoroButtonVariantThemeExtension(
      border: Border.all(width: kMyoroBorderLength, color: onPrimary),
      primaryIdleBackgroundColor: colorScheme.primary,
      primaryHoverBackgroundColor:
          isDarkMode
              ? onPrimary.darken(primaryHoverBackgroundColorFactor)
              : onPrimary.brighten(primaryHoverBackgroundColorFactor),
      primaryTapBackgroundColor:
          isDarkMode
              ? onPrimary.darken(primaryTapBackgroundColorFactor)
              : onPrimary.brighten(primaryTapBackgroundColorFactor),
      primaryIdleContentColor: onPrimary,
      primaryHoverContentColor: onPrimary,
      primaryTapContentColor: onPrimary,
      secondaryIdleBackgroundColor: onPrimary,
      secondaryHoverBackgroundColor:
          isDarkMode
              ? onPrimary.darken(secondaryHoverBackgroundColorFactor)
              : onPrimary.brighten(secondaryHoverBackgroundColorFactor),
      secondaryTapBackgroundColor:
          isDarkMode
              ? onPrimary.darken(secondaryTapBackgroundColorFactor)
              : onPrimary.brighten(secondaryTapBackgroundColorFactor),
      secondaryIdleContentColor: colorScheme.primary,
      secondaryHoverContentColor: colorScheme.primary,
      secondaryTapContentColor: colorScheme.primary,
    );
  }

  @override
  MyoroButtonVariantThemeExtension copyWith({
    BoxBorder? border,
    Color? primaryIdleBackgroundColor,
    Color? primaryHoverBackgroundColor,
    Color? primaryTapBackgroundColor,
    Color? primaryIdleContentColor,
    Color? primaryHoverContentColor,
    Color? primaryTapContentColor,
    Color? secondaryIdleBackgroundColor,
    Color? secondaryHoverBackgroundColor,
    Color? secondaryTapBackgroundColor,
    Color? secondaryIdleContentColor,
    Color? secondaryHoverContentColor,
    Color? secondaryTapContentColor,
  }) {
    return MyoroButtonVariantThemeExtension(
      border: border ?? this.border,
      primaryIdleBackgroundColor: primaryIdleBackgroundColor ?? this.primaryIdleBackgroundColor,
      primaryHoverBackgroundColor: primaryHoverBackgroundColor ?? this.primaryHoverBackgroundColor,
      primaryTapBackgroundColor: primaryTapBackgroundColor ?? this.primaryTapBackgroundColor,
      primaryIdleContentColor: primaryIdleContentColor ?? this.primaryIdleContentColor,
      primaryHoverContentColor: primaryHoverContentColor ?? this.primaryHoverContentColor,
      primaryTapContentColor: primaryTapContentColor ?? this.primaryTapContentColor,
      secondaryIdleBackgroundColor: secondaryIdleBackgroundColor ?? this.secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor: secondaryHoverBackgroundColor ?? this.secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor: secondaryTapBackgroundColor ?? this.secondaryTapBackgroundColor,
      secondaryIdleContentColor: secondaryIdleContentColor ?? this.secondaryIdleContentColor,
      secondaryHoverContentColor: secondaryHoverContentColor ?? this.secondaryHoverContentColor,
      secondaryTapContentColor: secondaryTapContentColor ?? this.secondaryTapContentColor,
    );
  }

  @override
  MyoroButtonVariantThemeExtension lerp(covariant ThemeExtension<MyoroButtonVariantThemeExtension>? other, double t) {
    if (other is! MyoroButtonVariantThemeExtension) return this;
    return copyWith(
      border: BoxBorder.lerp(border, other.border, t),
      primaryIdleBackgroundColor: Color.lerp(primaryIdleBackgroundColor, other.primaryIdleBackgroundColor, t),
      primaryHoverBackgroundColor: Color.lerp(primaryHoverBackgroundColor, other.primaryHoverBackgroundColor, t),
      primaryTapBackgroundColor: Color.lerp(primaryTapBackgroundColor, other.primaryTapBackgroundColor, t),
      primaryIdleContentColor: Color.lerp(primaryIdleContentColor, other.primaryIdleContentColor, t),
      primaryHoverContentColor: Color.lerp(primaryHoverContentColor, other.primaryHoverContentColor, t),
      primaryTapContentColor: Color.lerp(primaryTapContentColor, other.primaryTapContentColor, t),
      secondaryIdleBackgroundColor: Color.lerp(secondaryIdleBackgroundColor, other.secondaryIdleBackgroundColor, t),
      secondaryHoverBackgroundColor: Color.lerp(secondaryHoverBackgroundColor, other.secondaryHoverBackgroundColor, t),
      secondaryTapBackgroundColor: Color.lerp(secondaryTapBackgroundColor, other.secondaryTapBackgroundColor, t),
      secondaryIdleContentColor: Color.lerp(secondaryIdleContentColor, other.secondaryIdleContentColor, t),
      secondaryHoverContentColor: Color.lerp(secondaryHoverContentColor, other.secondaryHoverContentColor, t),
      secondaryTapContentColor: Color.lerp(secondaryTapContentColor, other.secondaryTapContentColor, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonVariantThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == border &&
        other.primaryIdleBackgroundColor == primaryIdleBackgroundColor &&
        other.primaryHoverBackgroundColor == primaryHoverBackgroundColor &&
        other.primaryTapBackgroundColor == primaryTapBackgroundColor &&
        other.primaryIdleContentColor == primaryIdleContentColor &&
        other.primaryHoverContentColor == primaryHoverContentColor &&
        other.primaryTapContentColor == primaryTapContentColor &&
        other.secondaryIdleBackgroundColor == secondaryIdleBackgroundColor &&
        other.secondaryHoverBackgroundColor == secondaryHoverBackgroundColor &&
        other.secondaryTapBackgroundColor == secondaryTapBackgroundColor &&
        other.secondaryIdleContentColor == secondaryIdleContentColor &&
        other.secondaryHoverContentColor == secondaryHoverContentColor &&
        other.secondaryTapContentColor == secondaryTapContentColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      border,
      primaryIdleBackgroundColor,
      primaryHoverBackgroundColor,
      primaryTapBackgroundColor,
      primaryIdleContentColor,
      primaryHoverContentColor,
      primaryTapContentColor,
      secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor,
      secondaryIdleContentColor,
      secondaryHoverContentColor,
      secondaryTapContentColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonVariantThemeExtension(\n'
      '  border: $border,\n'
      '  primaryIdleBackgroundColor: $primaryIdleBackgroundColor,\n'
      '  primaryHoverBackgroundColor: $primaryHoverBackgroundColor,\n'
      '  primaryTapBackgroundColor: $primaryTapBackgroundColor,\n'
      '  primaryIdleContentColor: $primaryIdleContentColor,\n'
      '  primaryHoverContentColor: $primaryHoverContentColor,\n'
      '  primaryTapContentColor: $primaryTapContentColor,\n'
      '  secondaryIdleBackgroundColor: $primaryIdleBackgroundColor,\n'
      '  secondaryHoverBackgroundColor: $primaryHoverBackgroundColor,\n'
      '  secondaryTapBackgroundColor: $primaryTapBackgroundColor,\n'
      '  secondaryIdleContentColor: $secondaryIdleContentColor,\n'
      '  secondaryHoverContentColor: $secondaryHoverContentColor,\n'
      '  secondaryTapContentColor: $secondaryTapContentColor,\n'
      ');';
}
