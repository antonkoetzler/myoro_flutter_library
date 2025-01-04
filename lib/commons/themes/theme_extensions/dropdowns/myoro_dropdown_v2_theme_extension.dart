import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of dropdowns.
final class MyoroDropdownV2ThemeExtension extends ThemeExtension<MyoroDropdownV2ThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Input].
  final MyoroInputStyleEnum inputStyle;

  /// Spacing between [_Input] & [_Menu].
  final double inputDropdownSpacing;

  /// Default max height of [_Menu].
  final double menuMaxHeight;

  const MyoroDropdownV2ThemeExtension({
    required this.inputStyle,
    required this.inputDropdownSpacing,
    required this.menuMaxHeight,
  });

  @override
  MyoroDropdownV2ThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? inputDropdownSpacing,
    double? menuMaxHeight,
  }) {
    return MyoroDropdownV2ThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      inputDropdownSpacing: inputDropdownSpacing ?? this.inputDropdownSpacing,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
    );
  }

  @override
  ThemeExtension<MyoroDropdownV2ThemeExtension> lerp(
    covariant ThemeExtension<MyoroDropdownV2ThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownV2ThemeExtension) return this;
    return copyWith(
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
      inputDropdownSpacing: lerpDouble(inputDropdownSpacing, other.inputDropdownSpacing, t),
      menuMaxHeight: lerpDouble(menuMaxHeight, other.menuMaxHeight, t),
    );
  }
}
