import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroCardWidgetShowcase].
final class MyoroCardWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCardWidgetShowcaseThemeExtension> {
  const MyoroCardWidgetShowcaseThemeExtension();

  @override
  MyoroCardWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroCardWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroCardWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
