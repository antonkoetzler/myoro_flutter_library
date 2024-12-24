import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSliderWidgetShowcase].
final class MyoroSliderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> {
  const MyoroSliderWidgetShowcaseThemeExtension();

  @override
  MyoroSliderWidgetShowcaseThemeExtension copyWith() {
    return const MyoroSliderWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSliderWidgetShowcaseThemeExtension) return this;
    return copyWith();
  }
}
