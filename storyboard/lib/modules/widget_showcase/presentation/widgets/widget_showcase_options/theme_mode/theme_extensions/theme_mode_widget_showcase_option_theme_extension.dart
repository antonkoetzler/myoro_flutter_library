import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'theme_mode_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [ThemeModeWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class ThemeModeWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ThemeModeWidgetShowcaseOptionThemeExtension>
    with _$ThemeModeWidgetShowcaseOptionThemeExtensionMixin {
  const ThemeModeWidgetShowcaseOptionThemeExtension();

  const ThemeModeWidgetShowcaseOptionThemeExtension.fake();

  const ThemeModeWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeModeWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ThemeModeWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
