import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroGroupCheckboxWidgetShowcase].
final class MyoroGroupCheckboxWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroGroupCheckboxWidgetShowcaseThemeExtension> {
  const MyoroGroupCheckboxWidgetShowcaseThemeExtension();

  const MyoroGroupCheckboxWidgetShowcaseThemeExtension.fake();

  const MyoroGroupCheckboxWidgetShowcaseThemeExtension.builder();

  @override
  MyoroGroupCheckboxWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroGroupCheckboxWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupCheckboxWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroGroupCheckboxWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroGroupCheckboxWidgetShowcaseThemeExtension(\n'
      ');';
}
