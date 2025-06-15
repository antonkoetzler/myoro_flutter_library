import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'text_max_lines_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [TextMaxLinesWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class TextMaxLinesWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextMaxLinesWidgetShowcaseOptionThemeExtension>
    with _$TextMaxLinesWidgetShowcaseOptionThemeExtensionMixin {
  const TextMaxLinesWidgetShowcaseOptionThemeExtension();

  const TextMaxLinesWidgetShowcaseOptionThemeExtension.fake();

  const TextMaxLinesWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextMaxLinesWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextMaxLinesWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
