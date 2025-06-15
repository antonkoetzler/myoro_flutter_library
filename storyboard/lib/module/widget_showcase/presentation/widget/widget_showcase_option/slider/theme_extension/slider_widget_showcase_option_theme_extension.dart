import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'slider_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [SliderWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class SliderWidgetShowcaseOptionThemeExtension extends ThemeExtension<SliderWidgetShowcaseOptionThemeExtension>
    with _$SliderWidgetShowcaseOptionThemeExtensionMixin {
  const SliderWidgetShowcaseOptionThemeExtension();

  const SliderWidgetShowcaseOptionThemeExtension.fake();

  const SliderWidgetShowcaseOptionThemeExtension.builder();

  @override
  SliderWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<SliderWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
