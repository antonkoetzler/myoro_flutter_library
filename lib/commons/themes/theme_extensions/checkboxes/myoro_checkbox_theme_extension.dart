import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroCheckbox]
final class MyoroCheckboxThemeExtension extends ThemeExtension<MyoroCheckboxThemeExtension> {
  /// Hover color of the [Checkbox].
  final Color hoverColor;

  /// Focus color of the [Checkbox].
  final Color focusColor;

  /// Splash radius when the [Checkbox] is hovered.
  final double splashRadius;

  /// Text style of the label.
  final TextStyle labelTextStyle;

  /// Spacing between the checkbox and the label.
  final double spacing;

  const MyoroCheckboxThemeExtension({
    required this.hoverColor,
    required this.focusColor,
    required this.splashRadius,
    required this.labelTextStyle,
    required this.spacing,
  });

  @override
  MyoroCheckboxThemeExtension copyWith({
    Color? hoverColor,
    Color? focusColor,
    double? splashRadius,
    TextStyle? labelTextStyle,
    double? spacing,
  }) {
    return MyoroCheckboxThemeExtension(
      hoverColor: hoverColor ?? this.hoverColor,
      focusColor: focusColor ?? this.focusColor,
      splashRadius: splashRadius ?? this.splashRadius,
      labelTextStyle: labelTextStyle ?? this.labelTextStyle,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  ThemeExtension<MyoroCheckboxThemeExtension> lerp(
    covariant ThemeExtension<MyoroCheckboxThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCheckboxThemeExtension) return this;
    return copyWith(
      hoverColor: Color.lerp(hoverColor, other.hoverColor, t),
      focusColor: Color.lerp(focusColor, other.focusColor, t),
      splashRadius: lerpDouble(splashRadius, other.splashRadius, t),
      labelTextStyle: TextStyle.lerp(labelTextStyle, other.labelTextStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
