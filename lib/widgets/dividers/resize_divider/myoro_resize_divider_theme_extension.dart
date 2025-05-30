import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroResizeDivider].
@immutable
class MyoroResizeDividerThemeExtension extends ThemeExtension<MyoroResizeDividerThemeExtension> {
  /// [MyoroColorDesignSystem.secondary] by default.
  final Color secondary;

  /// Width of the resize button. 10 by default.
  final double resizeButtonShortValue;

  /// Height of the resize button. 30 by default.
  final double resizeButtonLongValue;

  /// Border radius of the resize button. [kMyoroBorderRadius] by default.
  final BorderRadius resizeButtonBorderRadius;

  const MyoroResizeDividerThemeExtension({
    required this.secondary,
    required this.resizeButtonShortValue,
    required this.resizeButtonLongValue,
    required this.resizeButtonBorderRadius,
  });

  MyoroResizeDividerThemeExtension.fake()
    : secondary = myoroFake<Color>(),
      resizeButtonShortValue = faker.randomGenerator.decimal(),
      resizeButtonLongValue = faker.randomGenerator.decimal(),
      resizeButtonBorderRadius = myoroFake<BorderRadius>();

  MyoroResizeDividerThemeExtension.builder(ColorScheme colorScheme)
    : secondary = colorScheme.onPrimary,
      resizeButtonShortValue = 8,
      resizeButtonLongValue = 8,
      resizeButtonBorderRadius = BorderRadius.circular(kMyoroBorderRadiusLength);

  @override
  MyoroResizeDividerThemeExtension copyWith({
    Color? secondary,
    double? resizeButtonShortValue,
    double? resizeButtonLongValue,
    BorderRadius? resizeButtonBorderRadius,
  }) {
    return MyoroResizeDividerThemeExtension(
      secondary: secondary ?? this.secondary,
      resizeButtonShortValue: resizeButtonShortValue ?? this.resizeButtonShortValue,
      resizeButtonLongValue: resizeButtonLongValue ?? this.resizeButtonLongValue,
      resizeButtonBorderRadius: resizeButtonBorderRadius ?? this.resizeButtonBorderRadius,
    );
  }

  @override
  MyoroResizeDividerThemeExtension lerp(covariant ThemeExtension<MyoroResizeDividerThemeExtension>? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;
    return copyWith(
      secondary: Color.lerp(secondary, other.secondary, t),
      resizeButtonShortValue: lerpDouble(resizeButtonShortValue, other.resizeButtonShortValue, t),
      resizeButtonLongValue: lerpDouble(resizeButtonLongValue, other.resizeButtonLongValue, t),
      resizeButtonBorderRadius: BorderRadius.lerp(resizeButtonBorderRadius, other.resizeButtonBorderRadius, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerThemeExtension &&
        other.runtimeType == runtimeType &&
        other.secondary == secondary &&
        other.resizeButtonShortValue == resizeButtonShortValue &&
        other.resizeButtonLongValue == resizeButtonLongValue &&
        other.resizeButtonBorderRadius == resizeButtonBorderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(secondary, resizeButtonShortValue, resizeButtonLongValue, resizeButtonBorderRadius);
  }

  @override
  String toString() =>
      'MyoroResizeDividerThemeExtension(\n'
      '  secondary: $secondary,\n'
      '  resizeButtonShortValue: $resizeButtonShortValue,\n'
      '  resizeButtonLongValue: $resizeButtonLongValue,\n'
      '  resizeButtonBorderRadius: $resizeButtonBorderRadius,\n'
      ');';
}
