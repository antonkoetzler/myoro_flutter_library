import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tooltip_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTooltipWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroTooltipWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroTooltipWidgetShowcaseScreenThemeExtension>
    with _$MyoroTooltipWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroTooltipWidgetShowcaseScreenThemeExtension();

  const MyoroTooltipWidgetShowcaseScreenThemeExtension.fake();

  const MyoroTooltipWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroTooltipWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroTooltipWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
