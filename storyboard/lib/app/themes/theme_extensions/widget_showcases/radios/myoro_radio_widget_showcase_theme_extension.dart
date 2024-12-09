import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroRadioWidgetShowcase].
final class MyoroRadioWidgetShowcaseThemeExtension extends ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension> {
  const MyoroRadioWidgetShowcaseThemeExtension();

  @override
  MyoroRadioWidgetShowcaseThemeExtension copyWith() {
    return const MyoroRadioWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
