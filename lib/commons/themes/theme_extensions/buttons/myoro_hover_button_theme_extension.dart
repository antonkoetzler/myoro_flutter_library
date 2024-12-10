import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroHoverButton].
final class MyoroHoverButtonThemeExtension extends ThemeExtension<MyoroHoverButtonThemeExtension> {
  /// [MyoroColorTheme.transparent] by default.
  final Color primaryColor;

  /// [MyoroColorTheme.secondary] by default.
  final Color onPrimaryColor;

  /// Border radius of the background. [kMyoroBorderRadius] by default.
  final BorderRadius borderRadius;

  /// Whether the button has an outline bordered applied. [false] by default.
  final bool bordered;

  const MyoroHoverButtonThemeExtension({
    required this.primaryColor,
    required this.onPrimaryColor,
    required this.borderRadius,
    required this.bordered,
  });

  @override
  MyoroHoverButtonThemeExtension copyWith({
    Color? primaryColor,
    Color? onPrimaryColor,
    BorderRadius? borderRadius,
    bool? bordered,
  }) {
    return MyoroHoverButtonThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      onPrimaryColor: onPrimaryColor ?? this.onPrimaryColor,
      borderRadius: borderRadius ?? this.borderRadius,
      bordered: bordered ?? this.bordered,
    );
  }

  @override
  ThemeExtension<MyoroHoverButtonThemeExtension> lerp(covariant ThemeExtension<MyoroHoverButtonThemeExtension>? other, double t) {
    if (other is! MyoroHoverButtonThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      onPrimaryColor: Color.lerp(onPrimaryColor, other.onPrimaryColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      bordered: MyoroLerpHelper.lerp(bordered, other.bordered, t),
    );
  }
}
