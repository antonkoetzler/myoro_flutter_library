import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_secondary_button_style_theme_extension.g.dart';

/// [MyoroButton]'s  variant's [ThemeExtension].
@immutable
@myoroThemeExtension
final class MyoroSecondaryButtonStyleThemeExtension
    extends MyoroButtonStyleThemeExtension<MyoroSecondaryButtonStyleThemeExtension>
    with _$MyoroSecondaryButtonStyleThemeExtensionMixin {
  const MyoroSecondaryButtonStyleThemeExtension({
    super.idleBackgroundColor,
    super.hoverBackgroundColor,
    super.tapBackgroundColor,
    super.idleContentColor,
    super.hoverContentColor,
    super.tapContentColor,
    super.idleBorderColor,
    super.hoverBorderColor,
    super.tapBorderColor,
    super.borderWidth,
  });

  // coverage:ignore-start
  factory MyoroSecondaryButtonStyleThemeExtension.fake() {
    return MyoroSecondaryButtonStyleThemeExtension(
      idleBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      hoverBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tapBackgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      idleContentColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      hoverContentColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tapContentColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      idleBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      hoverBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      tapBorderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
    );
  }
  // coverage:ignore-end

  factory MyoroSecondaryButtonStyleThemeExtension.builder(bool isDarkMode, ColorScheme colorScheme) {
    const hoverBackgroundColorFactor = 0.7;
    const tapBackgroundColorFactor = 0.5;

    final primary = colorScheme.primary;
    final onPrimary = colorScheme.onPrimary;

    return MyoroSecondaryButtonStyleThemeExtension(
      idleBackgroundColor: primary,
      hoverBackgroundColor: isDarkMode
          ? onPrimary.darken(hoverBackgroundColorFactor)
          : onPrimary.brighten(hoverBackgroundColorFactor),
      tapBackgroundColor: isDarkMode
          ? onPrimary.darken(tapBackgroundColorFactor)
          : onPrimary.brighten(tapBackgroundColorFactor),
      idleContentColor: onPrimary,
      hoverContentColor: onPrimary,
      tapContentColor: onPrimary,
      idleBorderColor: onPrimary,
      hoverBorderColor: onPrimary,
      tapBorderColor: onPrimary,
    );
  }

  @override
  MyoroSecondaryButtonStyleThemeExtension lerp(
    covariant ThemeExtension<MyoroSecondaryButtonStyleThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSecondaryButtonStyleThemeExtension) return this;

    final idleBackgroundColor = Color.lerp(this.idleBackgroundColor, other.idleBackgroundColor, t);
    final hoverBackgroundColor = Color.lerp(this.hoverBackgroundColor, other.hoverBackgroundColor, t);
    final tapBackgroundColor = Color.lerp(this.tapBackgroundColor, other.tapBackgroundColor, t);
    final idleContentColor = Color.lerp(this.idleContentColor, other.idleContentColor, t);
    final hoverContentColor = Color.lerp(this.hoverContentColor, other.hoverContentColor, t);
    final tapContentColor = Color.lerp(this.tapContentColor, other.tapContentColor, t);
    final idleBorderColor = Color.lerp(this.idleBorderColor, other.idleBorderColor, t);
    final hoverBorderColor = Color.lerp(this.hoverBorderColor, other.hoverBorderColor, t);
    final tapBorderColor = Color.lerp(this.tapBorderColor, other.tapBorderColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);

    return copyWith(
      idleBackgroundColor: idleBackgroundColor,
      idleBackgroundColorProvided: idleBackgroundColor != null,
      hoverBackgroundColor: hoverBackgroundColor,
      hoverBackgroundColorProvided: hoverBackgroundColor != null,
      tapBackgroundColor: tapBackgroundColor,
      tapBackgroundColorProvided: tapBackgroundColor != null,
      idleContentColor: idleContentColor,
      idleContentColorProvided: idleContentColor != null,
      hoverContentColor: hoverContentColor,
      hoverContentColorProvided: hoverContentColor != null,
      tapContentColor: tapContentColor,
      tapContentColorProvided: tapContentColor != null,
      idleBorderColor: idleBorderColor,
      idleBorderColorProvided: idleBorderColor != null,
      hoverBorderColor: hoverBorderColor,
      hoverBorderColorProvided: hoverBorderColor != null,
      tapBorderColor: tapBorderColor,
      tapBorderColorProvided: tapBorderColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
    );
  }
}
