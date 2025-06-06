import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'text_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [TextWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class TextWidgetShowcaseOptionThemeExtension extends ThemeExtension<TextWidgetShowcaseOptionThemeExtension>
    with $TextWidgetShowcaseOptionThemeExtensionMixin {
  /// Generic spacing of [Widget]s.
  final double spacing;

  const TextWidgetShowcaseOptionThemeExtension({required this.spacing});

  TextWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const TextWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  TextWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! TextWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
