import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroSingularDropdownWidgetShowcase].
@immutable
final class MyoroSingularDropdownWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSingularDropdownWidgetShowcaseThemeExtension> {
  const MyoroSingularDropdownWidgetShowcaseThemeExtension();

  const MyoroSingularDropdownWidgetShowcaseThemeExtension.fake();

  const MyoroSingularDropdownWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSingularDropdownWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroSingularDropdownWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSingularDropdownWidgetShowcaseThemeExtension>? other,
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

  @override
  String toString() =>
      'MyoroSingularDropdownWidgetShowcaseThemeExtension(\n'
      ');';
}
