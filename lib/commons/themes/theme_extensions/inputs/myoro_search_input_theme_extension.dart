import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSearchInput].
final class MyoroSearchInputThemeExtension extends ThemeExtension<MyoroSearchInputThemeExtension> {
  /// Spacing in between the [MyoroInput] & [_SearchSection].
  final double spacing;

  /// Icon of [_SearchButton].
  final IconData searchButtonIcon;

  /// If [_SearchButton] is bordered or not.
  final bool searchButtonBordered;

  const MyoroSearchInputThemeExtension({
    required this.spacing,
    required this.searchButtonIcon,
    required this.searchButtonBordered,
  });

  @override
  MyoroSearchInputThemeExtension copyWith({
    double? spacing,
    IconData? searchButtonIcon,
    bool? searchButtonBordered,
  }) {
    return MyoroSearchInputThemeExtension(
      spacing: spacing ?? this.spacing,
      searchButtonIcon: searchButtonIcon ?? this.searchButtonIcon,
      searchButtonBordered: searchButtonBordered ?? this.searchButtonBordered,
    );
  }

  @override
  ThemeExtension<MyoroSearchInputThemeExtension> lerp(
    covariant ThemeExtension<MyoroSearchInputThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      searchButtonIcon: MyoroLerpHelper.lerp(searchButtonIcon, other.searchButtonIcon, t),
      searchButtonBordered: MyoroLerpHelper.lerp(searchButtonBordered, other.searchButtonBordered, t),
    );
  }
}
