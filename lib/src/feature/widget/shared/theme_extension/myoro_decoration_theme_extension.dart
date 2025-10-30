import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_decoration_theme_extension.g.dart';

/// Shared decoration [ThemeExtension].
@immutable
@myoroThemeExtension
final class MyoroDecorationThemeExtension extends ThemeExtension<MyoroDecorationThemeExtension>
    with _$MyoroDecorationThemeExtensionMixin {
  static const primaryBackgroundHoverColorFactor = 0.4;
  static const primaryBackgroundTapColorFactor = 0.2;
  static const secondaryBackgroundHoverColorFactor = 0.2;
  static const secondaryBackgroundTapColorFactor = 0.4;

  /// Default constructor.
  const MyoroDecorationThemeExtension({
    this.primaryBackgroundIdleColor,
    this.primaryBackgroundHoverColor,
    this.primaryBackgroundTapColor,
    this.secondaryBackgroundIdleColor,
    this.secondaryBackgroundHoverColor,
    this.secondaryBackgroundTapColor,
    this.disabledBackgroundColor,
    this.primaryContentColor,
    this.secondaryContentColor,
    this.borderWidth,
    this.borderColor,
    this.borderRadius,
  });

  /// Fake constructor.
  MyoroDecorationThemeExtension.fake()
    : primaryBackgroundIdleColor = myoroNullableFake<Color>(),
      primaryBackgroundHoverColor = myoroNullableFake<Color>(),
      primaryBackgroundTapColor = myoroNullableFake<Color>(),
      secondaryBackgroundIdleColor = myoroNullableFake<Color>(),
      secondaryBackgroundHoverColor = myoroNullableFake<Color>(),
      secondaryBackgroundTapColor = myoroNullableFake<Color>(),
      disabledBackgroundColor = myoroNullableFake<Color>(),
      primaryContentColor = myoroNullableFake<Color>(),
      secondaryContentColor = myoroNullableFake<Color>(),
      borderWidth = myoroNullableFake<double>(),
      borderColor = myoroNullableFake<Color>(),
      borderRadius = myoroNullableFake<BorderRadius>();

  MyoroDecorationThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme)
    : primaryBackgroundIdleColor = colorScheme.primary,
      primaryBackgroundHoverColor = isDarkMode
          ? colorScheme.onPrimary.darken(primaryBackgroundHoverColorFactor)
          : colorScheme.onPrimary.brighten(primaryBackgroundHoverColorFactor),
      primaryBackgroundTapColor = isDarkMode
          ? colorScheme.onPrimary.darken(primaryBackgroundTapColorFactor)
          : colorScheme.onPrimary.brighten(primaryBackgroundTapColorFactor),
      secondaryBackgroundIdleColor = colorScheme.onPrimary,
      secondaryBackgroundHoverColor = isDarkMode
          ? colorScheme.onPrimary.darken(secondaryBackgroundHoverColorFactor)
          : colorScheme.onPrimary.brighten(secondaryBackgroundHoverColorFactor),
      secondaryBackgroundTapColor = isDarkMode
          ? colorScheme.onPrimary.darken(secondaryBackgroundTapColorFactor)
          : colorScheme.onPrimary.brighten(secondaryBackgroundTapColorFactor),
      disabledBackgroundColor = isDarkMode ? colorScheme.onPrimary.darken(0.6) : colorScheme.onPrimary.brighten(0.6),
      primaryContentColor = colorScheme.onPrimary,
      secondaryContentColor = colorScheme.primary,
      borderWidth = kMyoroBorderWidth,
      borderColor = colorScheme.onPrimary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadius);

  /// Primary background [Color] of [MyoroTapStatusEnum.idle].
  final Color? primaryBackgroundIdleColor;

  /// Primary background [Color] of [MyoroTapStatusEnum.hover].
  final Color? primaryBackgroundHoverColor;

  /// Primary background [Color] of [MyoroTapStatusEnum.tap].
  final Color? primaryBackgroundTapColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.idle].
  final Color? secondaryBackgroundIdleColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.hover].
  final Color? secondaryBackgroundHoverColor;

  /// Secondary background [Color] of [MyoroTapStatusEnum.tap].
  final Color? secondaryBackgroundTapColor;

  /// Disabled background color.
  final Color? disabledBackgroundColor;

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

    final primaryBackgroundIdleColor = Color.lerp(this.primaryBackgroundIdleColor, other.primaryBackgroundIdleColor, t);
    final primaryBackgroundHoverColor = Color.lerp(
      this.primaryBackgroundHoverColor,
      other.primaryBackgroundHoverColor,
      t,
    );
    final primaryBackgroundTapColor = Color.lerp(this.primaryBackgroundTapColor, other.primaryBackgroundTapColor, t);
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
    final disabledBackgroundColor = Color.lerp(this.disabledBackgroundColor, other.disabledBackgroundColor, t);
    final primaryContentColor = Color.lerp(this.primaryContentColor, other.primaryContentColor, t);
    final secondaryContentColor = Color.lerp(this.secondaryContentColor, other.secondaryContentColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderColor = Color.lerp(this.borderColor, other.borderColor, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);

    return copyWith(
      primaryBackgroundIdleColor: primaryBackgroundIdleColor,
      primaryBackgroundHoverColor: primaryBackgroundHoverColor,
      primaryBackgroundTapColor: primaryBackgroundTapColor,
      secondaryBackgroundIdleColor: secondaryBackgroundIdleColor,
      secondaryBackgroundHoverColor: secondaryBackgroundHoverColor,
      secondaryBackgroundTapColor: secondaryBackgroundTapColor,
      disabledBackgroundColor: disabledBackgroundColor,
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
