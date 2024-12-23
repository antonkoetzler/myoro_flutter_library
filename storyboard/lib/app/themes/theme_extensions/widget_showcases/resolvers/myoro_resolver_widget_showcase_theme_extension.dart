import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroResolverWidgetShowcase].
final class MyoroResolverWidgetShowcaseThemeExtension extends ThemeExtension<MyoroResolverWidgetShowcaseThemeExtension> {
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
  ThemeExtension<MyoroResolverWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroResolverWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroResolverWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: MyoroLerpHelper.lerp(buttonBordered, other.buttonBordered, t),
      buttonTextAlign: MyoroLerpHelper.lerp(buttonTextAlign, other.buttonTextAlign, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
