import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDropdown].
final class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Input].
  final MyoroInputStyleEnum inputStyle;

  /// Spacing between [_Input] & [_Dropdown].
  final double spacing;

  const MyoroDropdownThemeExtension({
    required this.inputStyle,
    required this.spacing,
  });

  @override
  MyoroDropdownThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? spacing,
  }) {
    return MyoroDropdownThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  ThemeExtension<MyoroDropdownThemeExtension> lerp(
    covariant ThemeExtension<MyoroDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
      spacing: lerpDouble(spacing, other.spacing, t),
    );
  }
}
