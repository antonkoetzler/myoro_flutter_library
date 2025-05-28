import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSearchInput].
@immutable
class MyoroSearchInputThemeExtension extends ThemeExtension<MyoroSearchInputThemeExtension> {
  /// Spacing in between the [MyoroInput] & [_SearchSection].
  final double spacing;

  /// Icon of [_SearchButton].
  final IconData searchButtonIcon;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  final double searchButtonLoadingSize;

  const MyoroSearchInputThemeExtension({
    required this.spacing,
    required this.searchButtonIcon,
    required this.searchButtonLoadingSize,
  });

  MyoroSearchInputThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      searchButtonIcon = myoroFake<IconData>(),
      searchButtonLoadingSize = faker.randomGenerator.decimal();

  const MyoroSearchInputThemeExtension.builder(ColorScheme colorScheme)
    : spacing = 10,
      searchButtonIcon = Icons.search,
      searchButtonLoadingSize = 20;

  @override
  MyoroSearchInputThemeExtension copyWith({
    double? spacing,
    IconData? searchButtonIcon,
    double? searchButtonLoadingSize,
  }) {
    return MyoroSearchInputThemeExtension(
      spacing: spacing ?? this.spacing,
      searchButtonIcon: searchButtonIcon ?? this.searchButtonIcon,
      searchButtonLoadingSize: searchButtonLoadingSize ?? this.searchButtonLoadingSize,
    );
  }

  @override
  MyoroSearchInputThemeExtension lerp(covariant ThemeExtension<MyoroSearchInputThemeExtension>? other, double t) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      searchButtonIcon: myoroLerp(searchButtonIcon, other.searchButtonIcon, t),
      searchButtonLoadingSize: lerpDouble(searchButtonLoadingSize, other.searchButtonLoadingSize, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.searchButtonIcon == searchButtonIcon &&
        other.searchButtonLoadingSize == searchButtonLoadingSize;
  }

  @override
  int get hashCode {
    return Object.hash(spacing, searchButtonIcon, searchButtonLoadingSize);
  }

  @override
  String toString() =>
      'MyoroSearchInputThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  searchButtonIcon: $searchButtonIcon,\n'
      '  searchButtonLoadingSize: $searchButtonLoadingSize,\n'
      ');';
}
