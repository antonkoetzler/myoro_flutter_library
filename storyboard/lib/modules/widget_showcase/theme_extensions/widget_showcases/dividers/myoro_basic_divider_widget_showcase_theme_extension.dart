import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroBasicDividerWidgetShowcase].
final class MyoroBasicDividerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension> {
  const MyoroBasicDividerWidgetShowcaseThemeExtension();

  const MyoroBasicDividerWidgetShowcaseThemeExtension.fake();

  const MyoroBasicDividerWidgetShowcaseThemeExtension.builder();

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroBasicDividerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBasicDividerWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroBasicDividerWidgetShowcaseThemeExtension(\n'
      ');';
}
