import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_range_slider_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroRangeSliderWidgetShowcaseScreen].
final class MyoroRangeSliderWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroRangeSliderWidgetShowcaseScreenThemeExtension>
    with _$MyoroRangeSliderWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroRangeSliderWidgetShowcaseScreenThemeExtension();

  const MyoroRangeSliderWidgetShowcaseScreenThemeExtension.fake();

  const MyoroRangeSliderWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroRangeSliderWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroRangeSliderWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroRangeSliderWidgetShowcaseScreenThemeExtension) return this;
    return copyWith();
  }
}
