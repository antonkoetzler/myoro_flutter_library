import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of dropdowns.
final class MyoroDropdownThemeExtension
    extends ThemeExtension<MyoroDropdownThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Input].
  final MyoroInputStyleEnum inputStyle;

  /// Spacing between [_Input] & [_Menu].
  final double inputDropdownSpacing;

  /// Default max height of [_Menu].
  final double menuMaxHeight;

  const MyoroDropdownThemeExtension({
    required this.inputStyle,
    required this.inputDropdownSpacing,
    required this.menuMaxHeight,
  });

  MyoroDropdownThemeExtension.fake()
      : inputStyle = MyoroInputStyleEnum.fake(),
        inputDropdownSpacing = faker.randomGenerator.decimal(),
        menuMaxHeight = faker.randomGenerator.decimal();

  @override
  MyoroDropdownThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? inputDropdownSpacing,
    double? menuMaxHeight,
  }) {
    return MyoroDropdownThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      inputDropdownSpacing: inputDropdownSpacing ?? this.inputDropdownSpacing,
      menuMaxHeight: menuMaxHeight ?? this.menuMaxHeight,
    );
  }

  @override
  MyoroDropdownThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      inputDropdownSpacing:
          lerpDouble(inputDropdownSpacing, other.inputDropdownSpacing, t),
      menuMaxHeight: lerpDouble(menuMaxHeight, other.menuMaxHeight, t),
    );
  }
}
