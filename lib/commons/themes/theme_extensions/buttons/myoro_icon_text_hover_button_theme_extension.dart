import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroIconTextHoverButton].
final class MyoroIconTextHoverButtonThemeExtension extends ThemeExtension<MyoroIconTextHoverButtonThemeExtension> {
  /// [MyoroColorTheme.secondary] by default.
  final Color contentColor;

  /// [MyoroColorTheme.primary] by default.
  final Color backgroundColor;

  /// Default padding of the button.
  final EdgeInsets contentPadding;

  /// Default typography of the text.
  final TextStyle textStyle;

  /// Default [TextAlign] of the text.
  final TextAlign textAlign;

  /// Max lines allowed in the text.
  final int textMaxLines;

  /// Overflow behavior of the text.
  final TextOverflow textOverflow;

  /// Spacing between the icon & text.
  final double spacing;

  /// [MainAxisAlignment] of the [Row] holding the items.
  final MainAxisAlignment mainAxisAlignment;

  const MyoroIconTextHoverButtonThemeExtension({
    required this.contentColor,
    required this.backgroundColor,
    required this.contentPadding,
    required this.textStyle,
    required this.textAlign,
    required this.textMaxLines,
    required this.textOverflow,
    required this.spacing,
    required this.mainAxisAlignment,
  });

  @override
  MyoroIconTextHoverButtonThemeExtension copyWith({
    Color? contentColor,
    Color? backgroundColor,
    EdgeInsets? contentPadding,
    TextStyle? textStyle,
    TextAlign? textAlign,
    int? textMaxLines,
    TextOverflow? textOverflow,
    double? spacing,
    MainAxisAlignment? mainAxisAlignment,
  }) {
    return MyoroIconTextHoverButtonThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      contentColor: contentColor ?? this.contentColor,
      contentPadding: contentPadding ?? this.contentPadding,
      textStyle: textStyle ?? this.textStyle,
      textAlign: textAlign ?? this.textAlign,
      textMaxLines: textMaxLines ?? this.textMaxLines,
      textOverflow: textOverflow ?? this.textOverflow,
      spacing: spacing ?? this.spacing,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
    );
  }

  @override
  MyoroIconTextHoverButtonThemeExtension lerp(
    MyoroIconTextHoverButtonThemeExtension? other,
    double t,
  ) {
    if (other is! MyoroIconTextHoverButtonThemeExtension) return this;
    return copyWith(
      contentColor: Color.lerp(contentColor, other.contentColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      textAlign: LerpHelper.lerp(textAlign, other.textAlign, t),
      textMaxLines: lerpDouble(textMaxLines.toDouble(), other.textMaxLines.toDouble(), t)?.toInt(),
      textOverflow: LerpHelper.lerp(textOverflow, other.textOverflow, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      mainAxisAlignment: LerpHelper.lerp(mainAxisAlignment, other.mainAxisAlignment, t),
    );
  }
}
