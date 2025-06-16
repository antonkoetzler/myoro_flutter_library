import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'color_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [ColorWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class ColorWidgetShowcaseOptionThemeExtension extends ThemeExtension<ColorWidgetShowcaseOptionThemeExtension>
    with _$ColorWidgetShowcaseOptionThemeExtensionMixin {
  const ColorWidgetShowcaseOptionThemeExtension();

  const ColorWidgetShowcaseOptionThemeExtension.fake();

  const ColorWidgetShowcaseOptionThemeExtension.builder();

  @override
  ColorWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ColorWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
