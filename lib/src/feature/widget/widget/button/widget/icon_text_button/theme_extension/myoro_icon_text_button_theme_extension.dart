import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
@immutable
@myoroThemeExtension
class MyoroIconTextButtonThemeExtension extends MyoroButtonVariantThemeExtension<MyoroIconTextButtonThemeExtension>
    with _$MyoroIconTextButtonThemeExtensionMixin {
  static const _contentPaddingDefaultValue = EdgeInsets.all(kMyoroMultiplier * 2);
  static const _spacingDefaultValue = kMyoroMultiplier * 2;

  const MyoroIconTextButtonThemeExtension({
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
    this.contentPadding,
    this.spacing,
  });

  factory MyoroIconTextButtonThemeExtension.fromVariant(MyoroButtonVariantThemeExtension themeExtension) {
    return MyoroIconTextButtonThemeExtension(
      backgroundIdleColor: themeExtension.backgroundIdleColor,
      backgroundHoverColor: themeExtension.backgroundHoverColor,
      backgroundTapColor: themeExtension.backgroundTapColor,
      contentIdleColor: themeExtension.contentIdleColor,
      contentHoverColor: themeExtension.contentHoverColor,
      contentTapColor: themeExtension.contentTapColor,
      borderWidth: themeExtension.borderWidth,
      borderRadius: themeExtension.borderRadius,
      borderIdleColor: themeExtension.borderIdleColor,
      borderHoverColor: themeExtension.borderHoverColor,
      borderTapColor: themeExtension.borderTapColor,
      contentPadding: _contentPaddingDefaultValue,
      spacing: _spacingDefaultValue,
    );
  }

  // coverage:ignore-start
  factory MyoroIconTextButtonThemeExtension.fake() {
    return MyoroIconTextButtonThemeExtension(
      backgroundIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      backgroundTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderWidth: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      borderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      borderIdleColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderHoverColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      borderTapColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
    );
  }
  // coverage:ignore-end

  /// [EdgeInsets] of the button.
  final EdgeInsets? contentPadding;

  /// Spacing between the icon and text.
  final double? spacing;

  @override
  MyoroIconTextButtonThemeExtension lerp(covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other, double t) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;

    final backgroundIdleColor = Color.lerp(this.backgroundIdleColor, other.backgroundIdleColor, t);
    final backgroundHoverColor = Color.lerp(this.backgroundHoverColor, other.backgroundHoverColor, t);
    final backgroundTapColor = Color.lerp(this.backgroundTapColor, other.backgroundTapColor, t);
    final contentIdleColor = Color.lerp(this.contentIdleColor, other.contentIdleColor, t);
    final contentHoverColor = Color.lerp(this.contentHoverColor, other.contentHoverColor, t);
    final contentTapColor = Color.lerp(this.contentTapColor, other.contentTapColor, t);
    final borderWidth = lerpDouble(this.borderWidth, other.borderWidth, t);
    final borderRadius = BorderRadius.lerp(this.borderRadius, other.borderRadius, t);
    final borderIdleColor = Color.lerp(this.borderIdleColor, other.borderIdleColor, t);
    final borderHoverColor = Color.lerp(this.borderHoverColor, other.borderHoverColor, t);
    final borderTapColor = Color.lerp(this.borderTapColor, other.borderTapColor, t);
    final contentPadding = EdgeInsets.lerp(this.contentPadding, other.contentPadding, t);
    final spacing = lerpDouble(this.spacing, other.spacing, t);

    return copyWith(
      backgroundIdleColor: backgroundIdleColor,
      backgroundIdleColorProvided: backgroundIdleColor != null,
      backgroundHoverColor: backgroundHoverColor,
      backgroundHoverColorProvided: backgroundHoverColor != null,
      backgroundTapColor: backgroundTapColor,
      backgroundTapColorProvided: backgroundTapColor != null,
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
      borderIdleColor: borderIdleColor,
      borderIdleColorProvided: borderIdleColor != null,
      borderHoverColor: borderHoverColor,
      borderHoverColorProvided: borderHoverColor != null,
      borderTapColor: borderTapColor,
      borderTapColorProvided: borderTapColor != null,
      contentPadding: contentPadding,
      contentPaddingProvided: contentPadding != null,
      spacing: spacing,
      spacingProvided: spacing != null,
    );
  }
}
