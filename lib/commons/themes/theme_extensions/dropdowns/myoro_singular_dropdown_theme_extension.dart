import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroSingularDropdown].
final class MyoroSingularDropdownThemeExtension extends ThemeExtension<MyoroSingularDropdownThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Input].
  final MyoroInputStyleEnum inputStyle;

  const MyoroSingularDropdownThemeExtension({
    required this.inputStyle,
  });

  @override
  MyoroSingularDropdownThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroSingularDropdownThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroSingularDropdownThemeExtension> lerp(
    covariant ThemeExtension<MyoroSingularDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSingularDropdownThemeExtension) return this;
    return copyWith(
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
    );
  }
}
