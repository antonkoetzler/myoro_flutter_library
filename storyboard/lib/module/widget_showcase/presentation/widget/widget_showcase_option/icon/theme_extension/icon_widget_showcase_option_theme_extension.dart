import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'icon_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [IconWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class IconWidgetShowcaseOptionThemeExtension extends ThemeExtension<IconWidgetShowcaseOptionThemeExtension>
    with _$IconWidgetShowcaseOptionThemeExtensionMixin {
  /// Generic spacing of [Widget]s.
  final double spacing;

  const IconWidgetShowcaseOptionThemeExtension({required this.spacing});

  IconWidgetShowcaseOptionThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);

  const IconWidgetShowcaseOptionThemeExtension.builder() : spacing = 10;

  @override
  IconWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<IconWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! IconWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
