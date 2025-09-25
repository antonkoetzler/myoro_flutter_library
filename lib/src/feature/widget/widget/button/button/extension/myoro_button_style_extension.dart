import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Extension on [MyoroButtonStyle].
extension MyoroButtonStyleExtension<T extends MyoroButtonStyle> on T {
  /// Border adder.
  T bordered(BuildContext context) {
    final decorationThemeExtension = context.resolveThemeExtension<MyoroDecorationThemeExtension>();
    final borderWidth = decorationThemeExtension.borderWidth;
    final borderColor = decorationThemeExtension.borderColor;
    final borderColorProvided = borderColor != null;
    return copyWith(
          borderWidth: borderWidth,
          borderWidthProvided: borderWidth != null,
          borderIdleColor: borderColor,
          borderIdleColorProvided: borderColorProvided,
          borderHoverColor: borderColor,
          borderHoverColorProvided: borderColorProvided,
          borderTapColor: borderColor,
          borderTapColorProvided: borderColorProvided,
        )
        as T;
  }

  /// Use the primary theme variant.
  T primary(BuildContext context) {
    final decorationThemeExtension = context.resolveThemeExtension<MyoroDecorationThemeExtension>();
    final primaryIdleBackgroundColor = decorationThemeExtension.primaryIdleBackgroundColor;
    final primaryHoverBackgroundColor = decorationThemeExtension.primaryHoverBackgroundColor;
    final primaryTapBackgroundColor = decorationThemeExtension.primaryTapBackgroundColor;
    final primaryContentColor = decorationThemeExtension.primaryContentColor;
    return copyWith(
          backgroundIdleColor: primaryIdleBackgroundColor,
          backgroundIdleColorProvided: primaryIdleBackgroundColor != null,
          backgroundHoverColor: primaryHoverBackgroundColor,
          backgroundHoverColorProvided: primaryHoverBackgroundColor != null,
          backgroundTapColor: primaryTapBackgroundColor,
          backgroundTapColorProvided: primaryTapBackgroundColor != null,
          contentIdleColor: primaryContentColor,
          contentIdleColorProvided: primaryContentColor != null,
          contentHoverColor: primaryContentColor,
          contentHoverColorProvided: primaryContentColor != null,
          contentTapColor: primaryContentColor,
          contentTapColorProvided: primaryContentColor != null,
        )
        as T;
  }

  /// Use the secondary theme variant.
  T secondary(BuildContext context) {
    final decorationThemeExtension = context.resolveThemeExtension<MyoroDecorationThemeExtension>();
    final secondaryIdleBackgroundColor = decorationThemeExtension.secondaryIdleBackgroundColor;
    final secondaryHoverBackgroundColor = decorationThemeExtension.secondaryHoverBackgroundColor;
    final secondaryTapBackgroundColor = decorationThemeExtension.secondaryTapBackgroundColor;
    final secondaryContentColor = decorationThemeExtension.secondaryContentColor;
    return copyWith(
          backgroundIdleColor: secondaryIdleBackgroundColor,
          backgroundIdleColorProvided: secondaryIdleBackgroundColor != null,
          backgroundHoverColor: secondaryHoverBackgroundColor,
          backgroundHoverColorProvided: secondaryHoverBackgroundColor != null,
          backgroundTapColor: secondaryTapBackgroundColor,
          backgroundTapColorProvided: secondaryTapBackgroundColor != null,
          contentIdleColor: secondaryContentColor,
          contentIdleColorProvided: secondaryContentColor != null,
          contentHoverColor: secondaryContentColor,
          contentHoverColorProvided: secondaryContentColor != null,
          contentTapColor: secondaryContentColor,
          contentTapColorProvided: secondaryContentColor != null,
        )
        as T;
  }

  /// Background [Color] builder.
  Color? backgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return switch (tapStatus) {
      MyoroTapStatusEnum.idle => backgroundIdleColor,
      MyoroTapStatusEnum.hover => backgroundHoverColor,
      MyoroTapStatusEnum.tap => backgroundTapColor,
    };
  }

  /// Content [Color] builder.
  Color? contentColorBuilder(MyoroTapStatusEnum tapStatus) {
    return switch (tapStatus) {
      MyoroTapStatusEnum.idle => contentIdleColor,
      MyoroTapStatusEnum.hover => contentHoverColor,
      MyoroTapStatusEnum.tap => contentTapColor,
    };
  }

  /// [BoxBorder] builder.
  BoxBorder? borderBuilder(MyoroTapStatusEnum tapStatus) {
    if (borderWidth == null) return null;
    return Border.all(
      width: borderWidth!,
      color:
          switch (tapStatus) {
            MyoroTapStatusEnum.idle => borderIdleColor,
            MyoroTapStatusEnum.hover => borderHoverColor,
            MyoroTapStatusEnum.tap => borderTapColor,
          } ??
          MyoroColors.transparent,
    );
  }
}
