import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'padding_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [PaddingWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class PaddingWidgetShowcaseOptionThemeExtension extends ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>
    with _$PaddingWidgetShowcaseOptionThemeExtensionMixin {
  const PaddingWidgetShowcaseOptionThemeExtension({required this.spacing});

  PaddingWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const PaddingWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  /// General spacing of [Widget]s.
  final double spacing;

  @override
  PaddingWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<PaddingWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! PaddingWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
