import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroIconTextHoverButton].
final class MyoroIconTextHoverButtonThemeExtension extends ThemeExtension<MyoroIconTextHoverButtonThemeExtension> {
  /// [MyoroColorTheme.secondary] by default.
  final Color contentColor;

  /// [MyoroColorTheme.primary] by default.
  final Color backgroundColor;

  /// Default padding of the button. [EdgeInsets.all(5)] is the default.
  final EdgeInsets contentPadding;

  /// Default typography of the text. [MyoroTypographyTheme.regularMedium] is the default.
  final TextStyle textStyle;

  /// Default [TextAlign] of the text. [TextAlign.left] is the default.
  final TextAlign textAlign;

  /// Spacing between the icon & text. Default is 10.
  final double spacing;

  const MyoroIconTextHoverButtonThemeExtension({
    required this.contentColor,
    required this.backgroundColor,
    required this.contentPadding,
    required this.textStyle,
    required this.textAlign,
    required this.spacing,
  });

  @override
  MyoroIconTextHoverButtonThemeExtension copyWith({
    Color? contentColor,
    Color? backgroundColor,
    EdgeInsets? contentPadding,
    TextStyle? textStyle,
    TextAlign? textAlign,
    double? spacing,
  }) {
    return MyoroIconTextHoverButtonThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      contentColor: contentColor ?? this.contentColor,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
      textAlign: textAlign ?? this.textAlign,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  MyoroIconTextHoverButtonThemeExtension lerp(
    MyoroIconTextHoverButtonThemeExtension? other,
    double t,
  ) {
    if (other is! MyoroIconTextHoverButtonThemeExtension) return this;
    return MyoroIconTextHoverButtonThemeExtension(
      contentColor: Color.lerp(contentColor, other.contentColor, t) ?? contentColor,
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t) ?? backgroundColor,
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t) ?? contentPadding,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t) ?? textStyle,
      textAlign: TextAlignExtension.lerp(textAlign, other.textAlign, t) ?? textAlign,
      spacing: lerpDouble(spacing, other.spacing, t) ?? spacing,
    );
  }
}
