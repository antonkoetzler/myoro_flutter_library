import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroIconTextButtonWidgetShowcase].
final class MyoroIconTextButtonWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroIconTextButtonWidgetShowcaseThemeExtension> {
  const MyoroIconTextButtonWidgetShowcaseThemeExtension();

  const MyoroIconTextButtonWidgetShowcaseThemeExtension.fake();

  const MyoroIconTextButtonWidgetShowcaseThemeExtension.builder();

  @override
  MyoroIconTextButtonWidgetShowcaseThemeExtension copyWith() {
    return this;
  }

  @override
  MyoroIconTextButtonWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroIconTextButtonWidgetShowcaseThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonWidgetShowcaseThemeExtension(\n'
      ');';
}
