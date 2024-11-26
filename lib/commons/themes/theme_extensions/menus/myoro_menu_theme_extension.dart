import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroMenu].
final class MyoroMenuThemeExtension extends ThemeExtension<MyoroMenuThemeExtension> {
  /// Max height constraint of the menu.
  final double maxHeight;

  /// Max width constraint of the menu.
  final double maxWidth;

  /// Background color of the menu.
  final Color backgroundColor;

  /// Border radius of the menu.
  final BorderRadius borderRadius;

  /// Border of the menu.
  final Border border;

  /// Text style of [_EmptyMenuDialog].
  final TextStyle dialogTextStyle;

  const MyoroMenuThemeExtension({
    required this.maxHeight,
    required this.maxWidth,
    required this.backgroundColor,
    required this.borderRadius,
    required this.border,
    required this.dialogTextStyle,
  });

  @override
  MyoroMenuThemeExtension copyWith({
    double? maxHeight,
    double? maxWidth,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    Border? border,
    double? iconSize,
    TextStyle? textStyle,
    double? itemSpacing,
    TextStyle? dialogTextStyle,
  }) {
    return MyoroMenuThemeExtension(
      maxHeight: maxHeight ?? this.maxHeight,
      maxWidth: maxWidth ?? this.maxWidth,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      border: border ?? this.border,
      dialogTextStyle: dialogTextStyle ?? this.dialogTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroMenuThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenuThemeExtension) return this;
    return copyWith(
      maxHeight: lerpDouble(maxHeight, other.maxHeight, t),
      maxWidth: lerpDouble(maxWidth, other.maxWidth, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      border: Border.lerp(border, other.border, t),
      dialogTextStyle: TextStyle.lerp(dialogTextStyle, other.dialogTextStyle, t),
    );
  }
}
