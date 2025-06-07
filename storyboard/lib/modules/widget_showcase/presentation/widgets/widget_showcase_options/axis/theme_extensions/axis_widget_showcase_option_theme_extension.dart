import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

part 'axis_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [DirectionWidgetShowcaseOption].
final class AxisWidgetShowcaseOptionThemeExtension extends ThemeExtension<AxisWidgetShowcaseOptionThemeExtension>
    with $AxisWidgetShowcaseOptionThemeExtensionMixin {
  const AxisWidgetShowcaseOptionThemeExtension();

  const AxisWidgetShowcaseOptionThemeExtension.fake();

  const AxisWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeExtension<AxisWidgetShowcaseOptionThemeExtension> lerp(
    covariant ThemeExtension<AxisWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
