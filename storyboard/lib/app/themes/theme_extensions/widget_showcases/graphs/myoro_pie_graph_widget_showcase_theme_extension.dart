import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroPieGraphWidgetShowcase].
final class MyoroPieGraphWidgetShowcaseThemeExtension extends ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension> {
  const MyoroPieGraphWidgetShowcaseThemeExtension();

  @override
  MyoroPieGraphWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
