import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDropdown].
final class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension> {
  const MyoroDropdownThemeExtension();

  @override
  MyoroDropdownThemeExtension copyWith({
    bool? enableSearch,
  }) {
    return this;
  }

  @override
  ThemeExtension<MyoroDropdownThemeExtension> lerp(
    covariant ThemeExtension<MyoroDropdownThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
