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
    this.backgroundIdleColor,
    this.backgroundHoverColor,
    this.backgroundTapColor,
    this.contentIdleColor,
    this.contentHoverColor,
    this.contentTapColor,
    this.borderWidth,
    this.borderRadius,
    this.borderIdleColor,
    this.borderHoverColor,
    this.borderTapColor,
  });

  MyoroButtonThemeExtension.fake()
    : backgroundIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null;

  MyoroButtonThemeExtension.builder(MyoroDecorationThemeExtension decorationThemeExtension)
    : backgroundIdleColor = decorationThemeExtension.primaryIdleBackgroundColor,
      backgroundHoverColor = decorationThemeExtension.primaryHoverBackgroundColor,
      backgroundTapColor = decorationThemeExtension.primaryTapBackgroundColor,
      contentIdleColor = decorationThemeExtension.primaryContentColor,
      contentHoverColor = decorationThemeExtension.primaryContentColor,
      contentTapColor = decorationThemeExtension.primaryContentColor,
      borderWidth = null,
      borderRadius = decorationThemeExtension.borderRadius,
      borderIdleColor = null,
      borderHoverColor = null,
      borderTapColor = null;

  @override
  final Color? backgroundIdleColor;

  @override
  final Color? backgroundHoverColor;

  @override
  final Color? backgroundTapColor;

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
  final Color? borderIdleColor;

  @override
  final Color? borderHoverColor;

  @override
  final Color? borderTapColor;

  @override
  MyoroButtonThemeExtension lerp(covariant MyoroButtonThemeExtension? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;
    final style = MyoroButtonStyle.lerp(this, other, t);
    return MyoroButtonThemeExtension(
      backgroundIdleColor: style.backgroundIdleColor,
      backgroundHoverColor: style.backgroundHoverColor,
      backgroundTapColor: style.backgroundTapColor,
      contentIdleColor: style.contentIdleColor,
      contentHoverColor: style.contentHoverColor,
      contentTapColor: style.contentTapColor,
      borderWidth: style.borderWidth,
      borderRadius: style.borderRadius,
      borderIdleColor: style.borderIdleColor,
      borderHoverColor: style.borderHoverColor,
      borderTapColor: style.borderTapColor,
    );
  }
}
