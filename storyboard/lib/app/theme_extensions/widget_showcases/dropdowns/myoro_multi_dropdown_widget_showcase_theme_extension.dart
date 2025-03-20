import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroMultiDropdownWidgetShowcase].
final class MyoroMultiDropdownWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroMultiDropdownWidgetShowcaseThemeExtension> {
  const MyoroMultiDropdownWidgetShowcaseThemeExtension();

  const MyoroMultiDropdownWidgetShowcaseThemeExtension.builder();

  @override
  MyoroMultiDropdownWidgetShowcaseThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroMultiDropdownWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMultiDropdownWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMultiDropdownWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }
}
