import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroSearchInput].
@immutable
@myoroThemeExtension
class MyoroSearchInputThemeExtension extends ThemeExtension<MyoroSearchInputThemeExtension>
    with _$MyoroSearchInputThemeExtensionMixin {
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
    // TODO: Make these numbers constants
    : spacing = 10,
      searchButtonIcon = Icons.search,
      searchButtonLoadingSize = 20;

  /// Spacing in between the [MyoroInput] & [_SearchSection].
  final double spacing;

  /// Icon of [_SearchButton].
  final IconData searchButtonIcon;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  final double searchButtonLoadingSize;

  @override
  MyoroSearchInputThemeExtension lerp(covariant ThemeExtension<MyoroSearchInputThemeExtension>? other, double t) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      searchButtonIcon: myoroLerp(searchButtonIcon, other.searchButtonIcon, t),
      searchButtonLoadingSize: lerpDouble(searchButtonLoadingSize, other.searchButtonLoadingSize, t),
    );
  }
}
