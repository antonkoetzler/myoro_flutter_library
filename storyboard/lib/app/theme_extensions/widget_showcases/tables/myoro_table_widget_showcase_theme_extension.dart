import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableWidgetShowcase].
final class MyoroTableWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> {
  const MyoroTableWidgetShowcaseThemeExtension();

  const MyoroTableWidgetShowcaseThemeExtension.builder();

  @override
  MyoroTableWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroTableWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
