import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroTableWidgetShowcase].
final class MyoroTableWidgetShowcaseThemeExtension extends ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> {
  const MyoroTableWidgetShowcaseThemeExtension();

  @override
  MyoroTableWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
