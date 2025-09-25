import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroResizeDivider].
@immutable
@myoroThemeExtension
final class MyoroResizeDividerThemeExtension extends ThemeExtension<MyoroResizeDividerThemeExtension>
    with _$MyoroResizeDividerThemeExtensionMixin
    implements MyoroResizeDividerStyle {
  const MyoroResizeDividerThemeExtension({
    this.color,
    this.shortValue,
    this.longValue,
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

  @override
  final Color? color;

  @override
  final double? shortValue;

  @override
  final double? longValue;

  @override
  final BorderRadius? resizeButtonBorderRadius;

  @override
  final Color? resizeButtonColor;

  @override
  final double? resizeButtonShortValue;

  @override
  final double? resizeButtonLongValue;

  @override
  MyoroResizeDividerThemeExtension lerp(covariant MyoroResizeDividerThemeExtension? other, double t) {
    if (other is! MyoroResizeDividerThemeExtension) return this;

    final color = Color.lerp(this.color, other.color, t);
    final shortValue = lerpDouble(this.shortValue, other.shortValue, t);
    final longValue = myoroDoubleLerp(this.longValue, other.longValue, t);
    final resizeButtonBorderRadius = BorderRadius.lerp(
      this.resizeButtonBorderRadius,
      other.resizeButtonBorderRadius,
      t,
    );
    final resizeButtonColor = Color.lerp(this.resizeButtonColor, other.resizeButtonColor, t);
    final resizeButtonShortValue = lerpDouble(this.resizeButtonShortValue, other.resizeButtonShortValue, t);
    final resizeButtonLongValue = lerpDouble(this.resizeButtonLongValue, other.resizeButtonLongValue, t);

    return copyWith(
      color: color,
      colorProvided: color != null,
      shortValue: shortValue,
      shortValueProvided: shortValue != null,
      longValue: longValue,
      longValueProvided: longValue != null,
      resizeButtonBorderRadius: resizeButtonBorderRadius,
      resizeButtonBorderRadiusProvided: resizeButtonBorderRadius != null,
      resizeButtonColor: resizeButtonColor,
      resizeButtonColorProvided: resizeButtonColor != null,
      resizeButtonShortValue: resizeButtonShortValue,
      resizeButtonShortValueProvided: resizeButtonShortValue != null,
      resizeButtonLongValue: resizeButtonLongValue,
      resizeButtonLongValueProvided: resizeButtonLongValue != null,
    );
  }
}
