import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBarGraphWidgetShowcase].
final class MyoroBarGraphWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension> {
  const MyoroBarGraphWidgetShowcaseThemeExtension();

  @override
  MyoroBarGraphWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
