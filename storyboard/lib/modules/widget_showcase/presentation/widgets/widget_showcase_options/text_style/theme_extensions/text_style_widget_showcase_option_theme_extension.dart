import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'text_style_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [TextStyleWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class TextStyleWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextStyleWidgetShowcaseOptionThemeExtension>
    with _$TextStyleWidgetShowcaseOptionThemeExtension {
  const TextStyleWidgetShowcaseOptionThemeExtension();

  const TextStyleWidgetShowcaseOptionThemeExtension.fake();

  const TextStyleWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextStyleWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextStyleWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
