import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_button_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButton].
@immutable
@myoroThemeExtension
class MyoroButtonThemeExtension extends MyoroButtonVariantThemeExtension<MyoroButtonThemeExtension>
    with _$MyoroButtonThemeExtensionMixin {
  const MyoroButtonThemeExtension({
    super.backgroundColor,
    super.backgroundIdleColor,
    super.backgroundHoverColor,
    super.backgroundTapColor,
    super.contentColor,
    super.contentIdleColor,
    super.contentHoverColor,
    super.contentTapColor,
    super.borderWidth,
    super.borderRadius,
    super.borderColor,
    super.borderIdleColor,
    super.borderHoverColor,
    super.borderTapColor,
  });

  factory MyoroButtonThemeExtension.fromVariant(MyoroButtonVariantThemeExtension themeExtension) {
    return MyoroButtonThemeExtension(
      backgroundColor: themeExtension.backgroundColor,
      backgroundIdleColor: themeExtension.backgroundIdleColor,
      backgroundHoverColor: themeExtension.backgroundHoverColor,
      backgroundTapColor: themeExtension.backgroundTapColor,
      contentColor: themeExtension.contentColor,
      contentIdleColor: themeExtension.contentIdleColor,
      contentHoverColor: themeExtension.contentHoverColor,
      contentTapColor: themeExtension.contentTapColor,
      borderWidth: themeExtension.borderWidth,
      borderRadius: themeExtension.borderRadius,
      borderColor: themeExtension.borderColor,
      borderIdleColor: themeExtension.borderIdleColor,
      borderHoverColor: themeExtension.borderHoverColor,
      borderTapColor: themeExtension.borderTapColor,
    );
  }

  factory MyoroButtonThemeExtension.fromIconTextButtonThemeExtension(MyoroIconTextButtonThemeExtension themeExtension) {
    return MyoroButtonThemeExtension(
      backgroundColor: themeExtension.backgroundColor,
      backgroundIdleColor: themeExtension.backgroundIdleColor,
      backgroundHoverColor: themeExtension.backgroundHoverColor,
      backgroundTapColor: themeExtension.backgroundTapColor,
      contentColor: themeExtension.contentColor,
      contentIdleColor: themeExtension.contentIdleColor,
      contentHoverColor: themeExtension.contentHoverColor,
      contentTapColor: themeExtension.contentTapColor,
      borderWidth: themeExtension.borderWidth,
      borderRadius: themeExtension.borderRadius,
      borderColor: themeExtension.borderColor,
      borderIdleColor: themeExtension.borderIdleColor,
      borderHoverColor: themeExtension.borderHoverColor,
      borderTapColor: themeExtension.borderTapColor,
    );
  }

  @override
  MyoroButtonThemeExtension lerp(ThemeExtension<MyoroButtonThemeExtension>? other, double t) {
    if (other is! MyoroButtonThemeExtension) return this;

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
