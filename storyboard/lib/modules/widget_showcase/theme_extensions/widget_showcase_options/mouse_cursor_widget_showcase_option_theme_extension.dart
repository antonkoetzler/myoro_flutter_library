import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MouseCursorWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class MouseCursorWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MouseCursorWidgetShowcaseOptionThemeExtension> {
  const MouseCursorWidgetShowcaseOptionThemeExtension();

  const MouseCursorWidgetShowcaseOptionThemeExtension.fake();

  const MouseCursorWidgetShowcaseOptionThemeExtension.builder();

  @override
  MouseCursorWidgetShowcaseOptionThemeExtension copyWith() {
    return this;
  }

  @override
  MouseCursorWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MouseCursorWidgetShowcaseOptionThemeExtension>?
    other,
    double t,
  ) {
    return this;
  }

  @override
  bool operator ==(Object other) {
    return other is MouseCursorWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType;
  }

  @override
  int get hashCode {
    return Object.hashAll(const []);
  }

  @override
  String toString() =>
      'MouseCursorWidgetShowcaseOptionThemeExtension(\n'
      ');';
}
