import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [WidgetShowcaseOption].
final class WidgetShowcaseOptionThemeExtension
    extends ThemeExtension<WidgetShowcaseOptionThemeExtension> {
  /// Spacing of [Widget]s.
  final double spacing;

  /// [TextStyle] of [_Label].
  final TextStyle labelTextStyle;

  const WidgetShowcaseOptionThemeExtension({
    required this.spacing,
    required this.labelTextStyle,
  });

  WidgetShowcaseOptionThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      labelTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  WidgetShowcaseOptionThemeExtension.builder(TextTheme textTheme)
    : spacing = 10,
      labelTextStyle = textTheme.titleSmall!;

  @override
  WidgetShowcaseOptionThemeExtension copyWith({
    double? spacing,
    TextStyle? labelTextStyle,
  }) {
    return WidgetShowcaseOptionThemeExtension(
      spacing: spacing ?? this.spacing,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
    );
  }

  @override
  WidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseOptionThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseOptionThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  labelTextStyle: $labelTextStyle,\n'
      ');';
}
