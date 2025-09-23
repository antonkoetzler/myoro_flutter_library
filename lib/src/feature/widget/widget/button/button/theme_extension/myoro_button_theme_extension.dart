import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends ThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin
    implements MyoroButtonStyle {
  const MyoroButtonThemeExtension({
    this.backgroundColor,
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.contentColor,
    this.contentIdleColor,
    this.contentHoverColor,
    this.contentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderColor,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
  });

  // coverage:ignore-start
  factory MyoroButtonThemeExtension.fake() {
    return MyoroButtonThemeExtension(
      backgroundColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
    );
  }
  // coverage:ignore-end

  @override
  final Color? backgroundColor;

  @override
  final Color? backgroundIdleColor;

  @override
  final Color? backgroundHoverColor;

  @override
  final Color? backgroundTapColor;

  @override
  final Color? contentColor;

  @override
  final Color? contentIdleColor;

  @override
  final Color? contentHoverColor;

  @override
  final Color? contentTapColor;

  @override
  final double? borderWidth;

  @override
  final BorderRadius? borderRadius;

  @override
  final Color? borderColor;

  @override
  final Color? borderIdleColor;

  @override
  final Color? borderHoverColor;

  @override
  final Color? borderTapColor;

  @override
  MyoroButtonThemeExtension lerp(ThemeExtension<MyoroButtonThemeExtension>? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;

    final backgroundColor = Color.lerp(this.backgroundColor, other.backgroundColor, t);
    final backgroundIdleColor = Color.lerp(this.backgroundIdleColor, other.backgroundIdleColor, t);
    final backgroundHoverColor = Color.lerp(this.backgroundHoverColor, other.backgroundHoverColor, t);
    final backgroundTapColor = Color.lerp(this.backgroundTapColor, other.backgroundTapColor, t);
    final contentColor = Color.lerp(this.contentColor, other.contentColor, t);
    final contentIdleColor = Color.lerp(this.contentIdleColor, other.contentIdleColor, t);
    final contentHoverColor = Color.lerp(this.contentHoverColor, other.contentHoverColor, t);
    final contentTapColor = Color.lerp(this.contentTapColor, other.contentTapColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final borderColor = Color.lerp(this.borderColor, other.borderColor, t);
    final borderIdleColor = Color.lerp(this.borderIdleColor, other.borderIdleColor, t);
    final borderHoverColor = Color.lerp(this.borderHoverColor, other.borderHoverColor, t);
    final borderTapColor = Color.lerp(this.borderTapColor, other.borderTapColor, t);

    return copyWith(
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null,
      backgroundIdleColor: backgroundIdleColor,
      backgroundIdleColorProvided: backgroundIdleColor != null,
      backgroundHoverColor: backgroundHoverColor,
      backgroundHoverColorProvided: backgroundHoverColor != null,
      backgroundTapColor: backgroundTapColor,
      backgroundTapColorProvided: backgroundTapColor != null,
      contentColor: contentColor,
      contentColorProvided: contentColor != null,
      contentIdleColor: contentIdleColor,
      contentIdleColorProvided: contentIdleColor != null,
      contentHoverColor: contentHoverColor,
      contentHoverColorProvided: contentHoverColor != null,
      contentTapColor: contentTapColor,
      contentTapColorProvided: contentTapColor != null,
      borderWidth: borderWidth,
      borderWidthProvided: borderWidth != null,
      borderRadius: borderRadius,
      borderRadiusProvided: borderRadius != null,
      borderColor: borderColor,
      borderColorProvided: borderColor != null,
      borderIdleColor: borderIdleColor,
      borderIdleColorProvided: borderIdleColor != null,
      borderHoverColor: borderHoverColor,
      borderHoverColorProvided: borderHoverColor != null,
      borderTapColor: borderTapColor,
      borderTapColorProvided: borderTapColor != null,
    );
  }
}
