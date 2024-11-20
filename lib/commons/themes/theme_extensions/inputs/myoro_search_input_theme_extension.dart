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

  /// Color of the content in [_SearchButton] when it is not hovered.
  final Color searchButtonHoverColor;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  final double searchButtonLoadingSize;

  const MyoroSearchInputThemeExtension({
    required this.spacing,
    required this.searchButtonIcon,
    required this.searchButtonBordered,
    required this.searchButtonHoverColor,
    required this.searchButtonLoadingSize,
  });

  @override
  MyoroSearchInputThemeExtension copyWith({
    double? spacing,
    IconData? searchButtonIcon,
    bool? searchButtonBordered,
    Color? searchButtonHoverColor,
    double? searchButtonLoadingSize,
  }) {
    return MyoroSearchInputThemeExtension(
      spacing: spacing ?? this.spacing,
      searchButtonIcon: searchButtonIcon ?? this.searchButtonIcon,
      searchButtonBordered: searchButtonBordered ?? this.searchButtonBordered,
      searchButtonHoverColor: searchButtonHoverColor ?? this.searchButtonHoverColor,
      searchButtonLoadingSize: searchButtonLoadingSize ?? this.searchButtonLoadingSize,
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
      searchButtonHoverColor: Color.lerp(searchButtonHoverColor, other.searchButtonHoverColor, t),
      searchButtonLoadingSize: lerpDouble(searchButtonLoadingSize, other.searchButtonLoadingSize, t),
    );
  }
}
