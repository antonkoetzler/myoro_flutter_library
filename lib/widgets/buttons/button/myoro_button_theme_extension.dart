import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension> {
  /// Standard [BoxBorder].
  final BoxBorder border;

  /// Border radius.
  final BorderRadius borderRadius;

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

  const MyoroButtonThemeExtension({
    required this.border,
    required this.borderRadius,
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

  MyoroButtonThemeExtension.fake()
    : border = myoroFake<Border>(),
      borderRadius = myoroFake<BorderRadius>(),
      primaryIdleBackgroundColor = myoroFake<Color>(),
      primaryHoverBackgroundColor = myoroFake<Color>(),
      primaryTapBackgroundColor = myoroFake<Color>(),
      primaryIdleContentColor = myoroFake<Color>(),
      primaryHoverContentColor = myoroFake<Color>(),
      primaryTapContentColor = myoroFake<Color>(),
      secondaryIdleBackgroundColor = myoroFake<Color>(),
      secondaryHoverBackgroundColor = myoroFake<Color>(),
      secondaryTapBackgroundColor = myoroFake<Color>(),
      secondaryIdleContentColor = myoroFake<Color>(),
      secondaryHoverContentColor = myoroFake<Color>(),
      secondaryTapContentColor = myoroFake<Color>();

  factory MyoroButtonThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const primaryHoverBackgroundColorFactor = 0.7;
    const primaryTapBackgroundColorFactor = 0.5;
    const secondaryHoverBackgroundColorFactor = 0.15;
    const secondaryTapBackgroundColorFactor = 0.2;

    final Color onPrimary = colorScheme.onPrimary;

    return MyoroButtonThemeExtension(
      border: Border.all(width: kMyoroBorderLength, color: onPrimary),
      borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
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
  MyoroButtonThemeExtension copyWith({
    BoxBorder? border,
    BorderRadius? borderRadius,
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
    return MyoroButtonThemeExtension(
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
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
  MyoroButtonThemeExtension lerp(covariant ThemeExtension<MyoroButtonThemeExtension>? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;
    return copyWith(
      border: BoxBorder.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
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
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == border &&
        other.borderRadius == borderRadius &&
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
      borderRadius,
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
      'MyoroButtonThemeExtension(\n'
      '  border: $border,\n'
      '  borderRadius: $borderRadius,\n'
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
