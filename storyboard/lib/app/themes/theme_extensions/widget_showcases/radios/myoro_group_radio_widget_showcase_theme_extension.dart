import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroGroupRadioWidgetShowcase].
final class MyoroGroupRadioWidgetShowcaseThemeExtension extends ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension> {
  const MyoroGroupRadioWidgetShowcaseThemeExtension();

  @override
  MyoroGroupRadioWidgetShowcaseThemeExtension copyWith() {
    return const MyoroGroupRadioWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
