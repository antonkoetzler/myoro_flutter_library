import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroHoverButton].
final class MyoroHoverButtonThemeExtension extends ThemeExtension<MyoroHoverButtonThemeExtension> {
  /// [MyoroColorTheme.secondary] by default.
  final Color contentColor;

  /// [MyoroColorTheme.transparent] by default.
  final Color backgroundColor;

  /// Border radius of the background. [kBorderRadius] by default.
  final BorderRadius borderRadius;

  /// Whether the button has an outline bordered applied. [false] by default.
  final bool bordered;

  const MyoroHoverButtonThemeExtension({
    required this.contentColor,
    required this.backgroundColor,
    required this.borderRadius,
    required this.bordered,
  });

  @override
  MyoroHoverButtonThemeExtension copyWith({
    Color? contentColor,
    Color? backgroundColor,
    BorderRadius? borderRadius,
    bool? bordered,
  }) {
    return MyoroHoverButtonThemeExtension(
      contentColor: contentColor ?? this.contentColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      bordered: bordered ?? this.bordered,
    );
  }

  @override
  MyoroHoverButtonThemeExtension lerp(MyoroHoverButtonThemeExtension? other, double t) {
    if (other is! MyoroHoverButtonThemeExtension) return this;
    return copyWith(
      contentColor: Color.lerp(contentColor, other.contentColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      bordered: LerpHelper.lerp(bordered, other.bordered, t),
    );
  }
}
