import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroMultiDropdownWidgetShowcase].
final class MyoroMultiDropdownWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroMultiDropdownWidgetShowcaseThemeExtension> {
  const MyoroMultiDropdownWidgetShowcaseThemeExtension();

  @override
  MyoroMultiDropdownWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroMultiDropdownWidgetShowcaseThemeExtension lerp(
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
