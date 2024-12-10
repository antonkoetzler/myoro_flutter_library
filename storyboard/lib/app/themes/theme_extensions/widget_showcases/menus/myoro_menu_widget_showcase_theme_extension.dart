import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> {
  const MyoroMenuWidgetShowcaseThemeExtension();

  @override
  MyoroMenuWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
