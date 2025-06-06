import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'color_dropdown_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [ColorDropdownWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class ColorDropdownWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ColorDropdownWidgetShowcaseOptionThemeExtension>
    with $ColorDropdownWidgetShowcaseOptionThemeExtensionMixin {
  const ColorDropdownWidgetShowcaseOptionThemeExtension();

  const ColorDropdownWidgetShowcaseOptionThemeExtension.fake();

  const ColorDropdownWidgetShowcaseOptionThemeExtension.builder();

  @override
  ColorDropdownWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ColorDropdownWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
