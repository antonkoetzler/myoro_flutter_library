import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroModalWidgetShowcase].
final class MyoroModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroModalWidgetShowcaseThemeExtension> {
  const MyoroModalWidgetShowcaseThemeExtension();

  @override
  MyoroModalWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroModalWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
