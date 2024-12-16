import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcase].
final class MyoroBasicDividerWidgetShowcaseThemeExtension extends ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> {
  const MyoroBasicDividerWidgetShowcaseThemeExtension();

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
