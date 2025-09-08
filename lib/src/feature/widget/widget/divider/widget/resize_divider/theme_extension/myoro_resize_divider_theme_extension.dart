import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroResizeDivider].
@immutable
@myoroThemeExtension
final class MyoroResizeDividerThemeExtension extends MyoroDividerThemeExtension<MyoroResizeDividerThemeExtension>
    with _$MyoroResizeDividerThemeExtensionMixin {
  const MyoroResizeDividerThemeExtension({
    super.color,
    super.shortValue,
    super.longValue,
    this.resizeButtonBorderRadius,
    this.resizeButtonColor,
    this.resizeButtonShortValue,
    this.resizeButtonLongValue,
  });

  // coverage:ignore-start
  factory MyoroResizeDividerThemeExtension.fake() {
    return MyoroResizeDividerThemeExtension(
      color: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      shortValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      longValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      resizeButtonBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      resizeButtonColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      resizeButtonShortValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      resizeButtonLongValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
    );
  }
  // coverage:ignore-end

  factory MyoroResizeDividerThemeExtension.builder(
    MyoroBasicDividerThemeExtension themeExtension,
    ColorScheme colorScheme,
  ) {
    return MyoroResizeDividerThemeExtension(
      color: themeExtension.color,
      shortValue: themeExtension.shortValue,
      longValue: themeExtension.longValue,
      resizeButtonBorderRadius: BorderRadius.circular(kMyoroBorderRadius),
      resizeButtonColor: colorScheme.onPrimary,
      resizeButtonShortValue: kMyoroBorderWidth,
      resizeButtonLongValue: kMyoroBorderWidth,
    );
  }

  /// Border radius of the resize button.
  final BorderRadius? resizeButtonBorderRadius;

  /// Background color of the resize button.
  final Color? resizeButtonColor;

  /// Width of the resize button.
  final double? resizeButtonShortValue;

  /// Height of the resize button.
  final double? resizeButtonLongValue;

  @override
  MyoroResizeDividerThemeExtension copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
    BorderRadius? resizeButtonBorderRadius,
    bool resizeButtonBorderRadiusProvided = true,
    Color? resizeButtonColor,
    bool resizeButtonColorProvided = true,
    double? resizeButtonShortValue,
    bool resizeButtonShortValueProvided = true,
    double? resizeButtonLongValue,
    bool resizeButtonLongValueProvided = true,
  }) {
    return MyoroResizeDividerThemeExtension(
      color: colorProvided ? (color ?? this.color) : null,
      shortValue: shortValueProvided ? (shortValue ?? this.shortValue) : null,
      longValue: longValueProvided ? (longValue ?? this.longValue) : null,
      resizeButtonBorderRadius: resizeButtonBorderRadiusProvided
          ? (resizeButtonBorderRadius ?? this.resizeButtonBorderRadius)
          : null,
      resizeButtonColor: resizeButtonColorProvided ? (resizeButtonColor ?? this.resizeButtonColor) : null,
      resizeButtonShortValue: resizeButtonShortValueProvided
          ? (resizeButtonShortValue ?? this.resizeButtonShortValue)
          : null,
      resizeButtonLongValue: resizeButtonLongValue ?? this.resizeButtonLongValue,
    );
  }

  @override
  MyoroResizeDividerThemeExtension lerp(covariant MyoroResizeDividerThemeExtension? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;

    return MyoroResizeDividerThemeExtension(
      color: Color.lerp(color, other.color, t),
      shortValue: lerpDouble(shortValue, other.shortValue, t),
      longValue: lerpDouble(longValue, other.longValue, t),
      resizeButtonBorderRadius: resizeButtonBorderRadius,
      resizeButtonColor: Color.lerp(resizeButtonColor, other.resizeButtonColor, t),
      resizeButtonShortValue: lerpDouble(resizeButtonShortValue, other.resizeButtonShortValue, t),
      resizeButtonLongValue: lerpDouble(resizeButtonLongValue, other.resizeButtonLongValue, t),
    );
  }
}
