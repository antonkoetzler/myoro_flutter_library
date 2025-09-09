import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract [ThemeExtension] representing a variant of [MyoroButtonThemeExtension].
abstract class MyoroButtonVariantThemeExtension<T extends MyoroButtonVariantThemeExtension<T>>
    extends ThemeExtension<T> {
  const MyoroButtonVariantThemeExtension({
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
  }) : assert(
         backgroundColor != null &&
             (backgroundIdleColor != null || backgroundHoverColor != null || backgroundTapColor != null),
         '[MyoroButtonVariantThemeExtension]: If [backgroundColor] is provided, '
         '[backgroundIdleColor] [backgroundHoverColor], and [backgroundTapColor] cannot be provided.',
       ),
       assert(
         contentColor != null && (contentIdleColor != null || contentHoverColor != null || contentTapColor != null),
         '[MyoroButtonVariantThemeExtension]: If [contentColor] is provided, '
         '[contentIdleColor] [contentHoverColor], and [contentTapColor] cannot be provided.',
       ),
       assert(
         borderColor != null && (borderIdleColor != null || borderHoverColor != null || borderTapColor != null),
         '[MyoroButtonVariantThemeExtension]: If [borderColor] is provided, '
         '[borderIdleColor] [borderHoverColor], and [borderTapColor] cannot be provided.',
       );

  /// Background [Color] of the button.
  ///
  /// If [backgroundColor] is provided, [backgroundIdleColor]
  /// [backgroundHoverColor], and [backgroundTapColor] will not be used.
  final Color? backgroundColor;

  /// [MyoroTapStatusEnum.idle]'s background [Color].
  final Color? backgroundIdleColor;

  /// [MyoroTapStatusEnum.hover]'s background [Color].
  final Color? backgroundHoverColor;

  /// [MyoroTapStatusEnum.tap]'s background [Color].
  final Color? backgroundTapColor;

  /// Content [Color] of the button.
  ///
  /// If [contentColor] is provided, [contentIdleColor]
  /// [contentHoverColor], and [contentTapColor] will not be used.
  final Color? contentColor;

  /// [MyoroTapStatusEnum.idle]'s content [Color].
  final Color? contentIdleColor;

  /// [MyoroTapStatusEnum.hover]'s content [Color].
  final Color? contentHoverColor;

  /// [MyoroTapStatusEnum.tap]'s content [Color].
  final Color? contentTapColor;

  /// Border width.
  final double? borderWidth;

  /// Border radius.
  final BorderRadius? borderRadius;

  /// Border [Color] of the button.
  ///
  /// If [borderColor] is provided, [borderIdleColor]
  /// [borderHoverColor], and [borderTapColor] will not be used.
  final Color? borderColor;

  /// [MyoroTapStatusEnum.idle]'s border [Color].
  final Color? borderIdleColor;

  /// [MyoroTapStatusEnum.hover]'s border [Color].
  final Color? borderHoverColor;

  /// [MyoroTapStatusEnum.tap]'s border [Color].
  final Color? borderTapColor;

  @override
  T copyWith({
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
    Color? contentColor,
    bool contentColorProvided = true,
    Color? contentIdleColor,
    bool contentIdleColorProvided = true,
    Color? contentHoverColor,
    bool contentHoverColorProvided = true,
    Color? contentTapColor,
    bool contentTapColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Color? borderColor,
    bool borderColorProvided = true,
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
  });

  @override
  T lerp(covariant T? other, double t) {
    if (other == null) return this as T;

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

  /// Background [Color] builder.
  Color? backgroundColorBuilder(MyoroTapStatusEnum tapStatus) {
    return backgroundColor ??
        switch (tapStatus) {
          MyoroTapStatusEnum.idle => backgroundIdleColor,
          MyoroTapStatusEnum.hover => backgroundHoverColor,
          MyoroTapStatusEnum.tap => backgroundTapColor,
        };
  }

  /// Content [Color] builder.
  Color? contentColorBuilder(MyoroTapStatusEnum tapStatus) {
    return contentColor ??
        switch (tapStatus) {
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
          borderColor ??
          switch (tapStatus) {
            MyoroTapStatusEnum.idle => borderIdleColor,
            MyoroTapStatusEnum.hover => borderHoverColor,
            MyoroTapStatusEnum.tap => borderTapColor,
          } ??
          MyoroColors.transparent,
    );
  }
}
