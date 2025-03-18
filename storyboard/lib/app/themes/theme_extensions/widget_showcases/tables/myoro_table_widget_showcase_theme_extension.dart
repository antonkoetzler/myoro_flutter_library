import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTableWidgetShowcase].
final class MyoroTableWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> {
  const MyoroTableWidgetShowcaseThemeExtension();

  @override
  MyoroTableWidgetShowcaseThemeExtension copyWith() {
    return const MyoroTableWidgetShowcaseThemeExtension();
  }

  @override
  ThemeExtension<MyoroTableWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroTableWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTableWidgetShowcaseThemeExtension) return this;
    return copyWith();
  }
}
