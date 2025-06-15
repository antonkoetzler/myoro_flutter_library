import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tooltip_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTooltipWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroTooltipWidgetShowcaseThemeExtension extends ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>
    with _$MyoroTooltipWidgetShowcaseThemeExtensionMixin {
  const MyoroTooltipWidgetShowcaseThemeExtension();

  const MyoroTooltipWidgetShowcaseThemeExtension.fake();

  const MyoroTooltipWidgetShowcaseThemeExtension.builder();

  @override
  MyoroTooltipWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
