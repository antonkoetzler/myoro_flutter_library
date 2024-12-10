import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroCard].
final class MyoroCardThemeExtension extends ThemeExtension<MyoroCardThemeExtension> {
  /// Background color of the card.
  final Color primaryColor;

  /// Border of the card.
  final Border border;

  /// Border radius of the card.
  final BorderRadius borderRadius;

  /// Padding of [MyoroCard.child].
  final EdgeInsets padding;

  /// Spacing in between [_Title] & [_Card].
  final double titleCardSpacing;

  /// Text style of [MyoroCard.title].
  final TextStyle textStyle;

  const MyoroCardThemeExtension({
    required this.primaryColor,
    required this.border,
    required this.borderRadius,
    required this.padding,
    required this.titleCardSpacing,
    required this.textStyle,
  });

  @override
  MyoroCardThemeExtension copyWith({
    Color? primaryColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? titleCardSpacing,
    TextStyle? textStyle,
  }) {
    return MyoroCardThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      titleCardSpacing: titleCardSpacing ?? this.titleCardSpacing,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  ThemeExtension<MyoroCardThemeExtension> lerp(
    covariant ThemeExtension<MyoroCardThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      titleCardSpacing: lerpDouble(titleCardSpacing, other.titleCardSpacing, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}