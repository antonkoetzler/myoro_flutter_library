import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_radio_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroRadio].
@immutable
@myoroThemeExtension
class MyoroRadioThemeExtension extends ThemeExtension<MyoroRadioThemeExtension> with _$MyoroRadioThemeExtensionMixin {
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

  MyoroRadioThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : activeColor = colorScheme.onPrimary,
      hoverColor = colorScheme.onPrimary.withValues(alpha: 0.3),
      labelTextStyle = textTheme.headlineSmall!,
      spacing = 5,
      splashRadius = 15;

  MyoroRadioThemeExtension.fake()
    : activeColor = myoroFake<Color>(),
      hoverColor = myoroFake<Color>(),
      labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      spacing = faker.randomGenerator.decimal(),
      splashRadius = faker.randomGenerator.decimal();

  @override
  MyoroRadioThemeExtension lerp(covariant ThemeExtension<MyoroRadioThemeExtension>? other, double t) {
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
