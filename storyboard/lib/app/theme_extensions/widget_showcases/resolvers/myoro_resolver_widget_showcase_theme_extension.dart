import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroResolverWidgetShowcase].
final class MyoroResolverWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroResolverWidgetShowcaseThemeExtension> {
  /// [MyoroHoverButtonConfiguration.buttonBordered] of buttons.
  final bool buttonBordered;

  /// [MyoroIconTextHoverButton.textAlign] of buttons.
  final TextAlign buttonTextAlign;

  /// Default spacing.
  final double spacing;

  const MyoroResolverWidgetShowcaseThemeExtension({
    required this.buttonBordered,
    required this.buttonTextAlign,
    required this.spacing,
  });

  MyoroResolverWidgetShowcaseThemeExtension.fake()
    : buttonBordered = faker.randomGenerator.boolean(),
      buttonTextAlign =
          TextAlign.values[faker.randomGenerator.integer(
            TextAlign.values.length,
          )],
      spacing = faker.randomGenerator.decimal();

  const MyoroResolverWidgetShowcaseThemeExtension.builder()
    : buttonBordered = true,
      buttonTextAlign = TextAlign.center,
      spacing = 10;

  @override
  MyoroResolverWidgetShowcaseThemeExtension copyWith({
    bool? buttonBordered,
    TextAlign? buttonTextAlign,
    double? spacing,
  }) {
    return MyoroResolverWidgetShowcaseThemeExtension(
      buttonBordered: buttonBordered ?? this.buttonBordered,
      buttonTextAlign: buttonTextAlign ?? this.buttonTextAlign,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MyoroResolverWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroResolverWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroResolverWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: myoroLerp(buttonBordered, other.buttonBordered, t),
      buttonTextAlign: myoroLerp(buttonTextAlign, other.buttonTextAlign, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResolverWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.buttonBordered == buttonBordered &&
        other.buttonTextAlign == buttonTextAlign &&
        other.spacing == spacing;
  }

  @override
  int get hashCode {
    return Object.hash(buttonBordered, buttonTextAlign, spacing);
  }

  @override
  String toString() =>
      'MyoroResolverWidgetShowcaseThemeExtension(\n'
      '  buttonBordered: $buttonBordered,\n'
      '  buttonTextAlign: $buttonTextAlign,\n'
      '  spacing: $spacing,\n'
      ');';
}
