import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroCarouselWidgetShowcase].
final class MyoroCarouselWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension> {
  const MyoroCarouselWidgetShowcaseThemeExtension();

  @override
  MyoroCarouselWidgetShowcaseThemeExtension copyWith() => this;

  @override
  MyoroCarouselWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
