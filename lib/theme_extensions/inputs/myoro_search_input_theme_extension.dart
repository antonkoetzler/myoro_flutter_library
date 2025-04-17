import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroSearchInput].
class MyoroSearchInputThemeExtension
    extends ThemeExtension<MyoroSearchInputThemeExtension> {
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

  MyoroSearchInputThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(),
      searchButtonIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      searchButtonBordered = faker.randomGenerator.boolean(),
      searchButtonHoverColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      searchButtonLoadingSize = faker.randomGenerator.decimal();

  MyoroSearchInputThemeExtension.builder(ColorScheme colorScheme)
    : spacing = 10,
      searchButtonIcon = Icons.search,
      searchButtonBordered = true,
      searchButtonHoverColor = colorScheme.primary,
      searchButtonLoadingSize = 20;

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
      searchButtonHoverColor:
          searchButtonHoverColor ?? this.searchButtonHoverColor,
      searchButtonLoadingSize:
          searchButtonLoadingSize ?? this.searchButtonLoadingSize,
    );
  }

  @override
  MyoroSearchInputThemeExtension lerp(
    covariant ThemeExtension<MyoroSearchInputThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      searchButtonIcon: myoroLerp(searchButtonIcon, other.searchButtonIcon, t),
      searchButtonBordered: myoroLerp(
        searchButtonBordered,
        other.searchButtonBordered,
        t,
      ),
      searchButtonHoverColor: Color.lerp(
        searchButtonHoverColor,
        other.searchButtonHoverColor,
        t,
      ),
      searchButtonLoadingSize: lerpDouble(
        searchButtonLoadingSize,
        other.searchButtonLoadingSize,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSearchInputThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.searchButtonIcon == searchButtonIcon &&
        other.searchButtonBordered == searchButtonBordered &&
        other.searchButtonHoverColor == searchButtonHoverColor &&
        other.searchButtonLoadingSize == searchButtonLoadingSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      spacing,
      searchButtonIcon,
      searchButtonBordered,
      searchButtonHoverColor,
      searchButtonLoadingSize,
    );
  }

  @override
  String toString() =>
      'MyoroSearchInputThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  searchButtonIcon: $searchButtonIcon,\n'
      '  searchButtonBordered: $searchButtonBordered,\n'
      '  searchButtonHoverColor: $searchButtonHoverColor,\n'
      '  searchButtonLoadingSize: $searchButtonLoadingSize,\n'
      ');';
}
