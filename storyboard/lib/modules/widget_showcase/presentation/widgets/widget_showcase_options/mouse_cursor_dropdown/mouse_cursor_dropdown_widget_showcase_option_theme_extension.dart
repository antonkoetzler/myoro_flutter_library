import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MouseCursorDropdownWidgetShowcaseOption].
final class MouseCursorDropdownWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MouseCursorDropdownWidgetShowcaseOptionThemeExtension> {
  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension();

  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension.fake();

  const MouseCursorDropdownWidgetShowcaseOptionThemeExtension.builder();

  @override
  MouseCursorDropdownWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  MouseCursorDropdownWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MouseCursorDropdownWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MouseCursorDropdownWidgetShowcaseOptionThemeExtension && other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MouseCursorDropdownWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
