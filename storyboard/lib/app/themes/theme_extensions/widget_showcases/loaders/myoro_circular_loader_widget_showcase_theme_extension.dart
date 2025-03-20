import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroCircularLoaderWidgetShowcase].
final class MyoroCircularLoaderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> {
  const MyoroCircularLoaderWidgetShowcaseThemeExtension();

  @override
  MyoroCircularLoaderWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>?
        other,
    double t,
  ) {
    return this;
  }
}
