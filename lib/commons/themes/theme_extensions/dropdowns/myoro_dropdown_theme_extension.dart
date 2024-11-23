import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroDropdown].
final class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension> {
  /// If the dropdown will have the functionality to search for options.
  final bool enableSearch;

  const MyoroDropdownThemeExtension({
    required this.enableSearch,
  });

  @override
  MyoroDropdownThemeExtension copyWith({
    bool? enableSearch,
  }) {
    return MyoroDropdownThemeExtension(
      enableSearch: enableSearch ?? this.enableSearch,
    );
  }

  @override
  ThemeExtension<MyoroDropdownThemeExtension> lerp(
    covariant ThemeExtension<MyoroDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(
      enableSearch: MyoroLerpHelper.lerp(enableSearch, other.enableSearch, t),
    );
  }
}
