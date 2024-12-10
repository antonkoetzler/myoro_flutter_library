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
  final Color primaryColor;

  /// Border of the menu.
  final Border border;

  /// Border radius of the menu.
  final BorderRadius borderRadius;

  /// [BorderRadius] of [_Item].
  final BorderRadius itemBorderRadius;

  /// Text style of [_EmptyMenuDialog].
  final TextStyle dialogTextStyle;

  const MyoroMenuThemeExtension({
    required this.maxHeight,
    required this.maxWidth,
    required this.primaryColor,
    required this.border,
    required this.borderRadius,
    required this.itemBorderRadius,
    required this.dialogTextStyle,
  });

  @override
  MyoroMenuThemeExtension copyWith({
    double? maxHeight,
    double? maxWidth,
    Color? primaryColor,
    Border? border,
    BorderRadius? borderRadius,
    BorderRadius? itemBorderRadius,
    TextStyle? dialogTextStyle,
  }) {
    return MyoroMenuThemeExtension(
      maxHeight: maxHeight ?? this.maxHeight,
      maxWidth: maxWidth ?? this.maxWidth,
      primaryColor: primaryColor ?? this.primaryColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      itemBorderRadius: itemBorderRadius ?? this.itemBorderRadius,
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
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      itemBorderRadius: BorderRadius.lerp(itemBorderRadius, other.itemBorderRadius, t),
      dialogTextStyle: TextStyle.lerp(dialogTextStyle, other.dialogTextStyle, t),
    );
  }
}
