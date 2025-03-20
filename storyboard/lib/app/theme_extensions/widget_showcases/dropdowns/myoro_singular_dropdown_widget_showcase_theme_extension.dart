import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroSingularDropdownWidgetShowcase].
final class MyoroSingularDropdownWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSingularDropdownWidgetShowcaseThemeExtension> {
  const MyoroSingularDropdownWidgetShowcaseThemeExtension();

  const MyoroSingularDropdownWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSingularDropdownWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroSingularDropdownWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSingularDropdownWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSingularDropdownWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
