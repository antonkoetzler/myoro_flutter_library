import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'text_overflow_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [TextOverflowWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class TextOverflowWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextOverflowWidgetShowcaseOptionThemeExtension>
    with _$TextOverflowWidgetShowcaseOptionThemeExtension {
  const TextOverflowWidgetShowcaseOptionThemeExtension();

  const TextOverflowWidgetShowcaseOptionThemeExtension.fake();

  const TextOverflowWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeExtension<TextOverflowWidgetShowcaseOptionThemeExtension> lerp(
    covariant ThemeExtension<TextOverflowWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
