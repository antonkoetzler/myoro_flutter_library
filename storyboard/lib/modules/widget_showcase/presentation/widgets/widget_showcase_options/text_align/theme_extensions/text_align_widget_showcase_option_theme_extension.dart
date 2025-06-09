import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'text_align_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [TextAlignWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class TextAlignWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<TextAlignWidgetShowcaseOptionThemeExtension>
    with _$TextAlignWidgetShowcaseOptionThemeExtensionMixin {
  const TextAlignWidgetShowcaseOptionThemeExtension();

  const TextAlignWidgetShowcaseOptionThemeExtension.fake();

  const TextAlignWidgetShowcaseOptionThemeExtension.builder();

  @override
  TextAlignWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<TextAlignWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
