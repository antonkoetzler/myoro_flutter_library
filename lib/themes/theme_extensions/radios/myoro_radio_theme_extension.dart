import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroRadio].
final class MyoroRadioThemeExtension
    extends ThemeExtension<MyoroRadioThemeExtension> {
  /// Color of the radio itself.
  final Color activeColor;

  /// Color of background when hovered.
  final Color hoverColor;

  /// [TextStyle] of [MyoroRadio.label].
  final TextStyle labelTextStyle;

  /// Spacing in between the radio and [MyoroRadio.label].
  final double spacing;

  /// Background (splash) color size.
  final double splashRadius;

  const MyoroRadioThemeExtension({
    required this.activeColor,
    required this.hoverColor,
    required this.labelTextStyle,
    required this.spacing,
    required this.splashRadius,
  });

  MyoroRadioThemeExtension.fake()
    : activeColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      hoverColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      labelTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
      spacing = faker.randomGenerator.decimal(),
      splashRadius = faker.randomGenerator.decimal();

  @override
  MyoroRadioThemeExtension copyWith({
    Color? activeColor,
    Color? hoverColor,
    TextStyle? labelTextStyle,
    double? spacing,
    double? splashRadius,
  }) {
    return MyoroRadioThemeExtension(
      activeColor: activeColor ?? this.activeColor,
      hoverColor: hoverColor ?? this.hoverColor,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      spacing: spacing ?? this.spacing,
      splashRadius: splashRadius ?? this.splashRadius,
    );
  }

  @override
  MyoroRadioThemeExtension lerp(
    covariant ThemeExtension<MyoroRadioThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroRadioThemeExtension) return this;
    return copyWith(
      activeColor: Color.lerp(activeColor, other.activeColor, t),
      hoverColor: Color.lerp(hoverColor, other.hoverColor, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      splashRadius: lerpDouble(splashRadius, other.splashRadius, t),
    );
  }
}
