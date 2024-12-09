import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSnackBarWidgetShowcase].
final class MyoroSnackBarWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension> {
  const MyoroSnackBarWidgetShowcaseThemeExtension();

  @override
  MyoroSnackBarWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
