import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroTapStatusEnumWidgetShowcaseOption].
final class MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension> {
  const MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension();

  const MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension.fake();

  const MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension.builder();

  @override
  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroTapStatusEnumWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
