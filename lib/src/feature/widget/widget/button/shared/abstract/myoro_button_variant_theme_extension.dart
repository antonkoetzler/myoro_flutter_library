import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Abstract [ThemeExtension] representing a variant of [MyoroButtonThemeExtension].
abstract class MyoroButtonVariantThemeExtension<T extends MyoroButtonVariantThemeExtension<T>>
    extends ThemeExtension<T> {
  const MyoroButtonVariantThemeExtension({
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

  final Color? backgroundIdleColor;
  final Color? backgroundHoverColor;
  final Color? backgroundTapColor;
  final Color? contentIdleColor;
  final Color? contentHoverColor;
  final Color? contentTapColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final Color? borderIdleColor;
  final Color? borderHoverColor;
  final Color? borderTapColor;

  @override
  T lerp(covariant ThemeExtension<T>? other, double t) {
    if (other is! T) return this as T;

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
    );
  }

  @override
  T copyWith({
    Color? backgroundIdleColor,
    bool backgroundIdleColorProvided = true,
    Color? backgroundHoverColor,
    bool backgroundHoverColorProvided = true,
    Color? backgroundTapColor,
    bool backgroundTapColorProvided = true,
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
    Color? borderIdleColor,
    bool borderIdleColorProvided = true,
    Color? borderHoverColor,
    bool borderHoverColorProvided = true,
    Color? borderTapColor,
    bool borderTapColorProvided = true,
  }) {
    return _newInstance(
      backgroundIdleColor: backgroundIdleColorProvided ? backgroundIdleColor : this.backgroundIdleColor,
      backgroundHoverColor: backgroundHoverColorProvided ? backgroundHoverColor : this.backgroundHoverColor,
      backgroundTapColor: backgroundTapColorProvided ? backgroundTapColor : this.backgroundTapColor,
      contentIdleColor: contentIdleColorProvided ? contentIdleColor : this.contentIdleColor,
      contentHoverColor: contentHoverColorProvided ? contentHoverColor : this.contentHoverColor,
      contentTapColor: contentTapColorProvided ? contentTapColor : this.contentTapColor,
      borderWidth: borderWidthProvided ? borderWidth : this.borderWidth,
      borderRadius: borderRadiusProvided ? borderRadius : this.borderRadius,
      borderIdleColor: borderIdleColorProvided ? borderIdleColor : this.borderIdleColor,
      borderHoverColor: borderHoverColorProvided ? borderHoverColor : this.borderHoverColor,
      borderTapColor: borderTapColorProvided ? borderTapColor : this.borderTapColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonVariantThemeExtension(\n'
      '  backgroundIdleColor: backgroundIdleColor,\n'
      '  backgroundHoverColor: backgroundHoverColor,\n'
      '  backgroundTapColor: backgroundTapColor,\n'
      '  contentIdleColor: contentIdleColor,\n'
      '  contentHoverColor: contentHoverColor,\n'
      '  contentTapColor: contentTapColor,\n'
      '  borderWidth: borderWidth,\n'
      '  borderRadius: borderRadius,\n'
      '  borderIdleColor: borderIdleColor,\n'
      '  borderHoverColor: borderHoverColor,\n'
      '  borderTapColor: borderTapColor,\n'
      ');';

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

  /// Every concrete extension must implement this to return a new instance of itself.
  T _newInstance({
    Color? backgroundIdleColor,
    Color? backgroundHoverColor,
    Color? backgroundTapColor,
    Color? contentIdleColor,
    Color? contentHoverColor,
    Color? contentTapColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    Color? borderIdleColor,
    Color? borderHoverColor,
    Color? borderTapColor,
  });
}
