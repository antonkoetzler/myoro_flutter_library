import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroRadioWidgetShowcase].
final class MyoroWidgetShowcaseThemeExtension extends ThemeExtension<MyoroWidgetShowcaseThemeExtension> {
  const MyoroWidgetShowcaseThemeExtension();

  @override
  MyoroWidgetShowcaseThemeExtension copyWith() {
    return const MyoroWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
