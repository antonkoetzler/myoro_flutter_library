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
    with _$MyoroSearchInputThemeExtensionMixin
    implements MyoroSearchInputStyle {
  const MyoroSearchInputThemeExtension({this.spacing, this.searchButtonIcon, this.searchButtonLoadingSize});

  // coverage:ignore-start
  MyoroSearchInputThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      searchButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      searchButtonLoadingSize = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  const MyoroSearchInputThemeExtension.builder(ColorScheme colorScheme)
    : spacing = kMyoroMultiplier * 2,
      searchButtonIcon = Icons.search,
      searchButtonLoadingSize = kMyoroMultiplier * 4;

  /// Spacing in between the [MyoroInput] & [_SearchSection].
  @override
  final double? spacing;

  /// Icon of [_SearchButton].
  @override
  final IconData? searchButtonIcon;

  /// Size of the [MyoroCircularLoader] in [_SearchButton].
  @override
  final double? searchButtonLoadingSize;

  @override
  MyoroSearchInputThemeExtension lerp(covariant ThemeExtension<MyoroSearchInputThemeExtension>? other, double t) {
    if (other is! MyoroSearchInputThemeExtension) return this;

    final spacing = lerpDouble(this.spacing, other.spacing, t);
    final searchButtonIcon = myoroFallbackLerp(this.searchButtonIcon, other.searchButtonIcon, t);
    final searchButtonLoadingSize = lerpDouble(this.searchButtonLoadingSize, other.searchButtonLoadingSize, t);

    return copyWith(
      spacing: spacing,
      spacingProvided: spacing != null,
      searchButtonIcon: searchButtonIcon,
      searchButtonIconProvided: searchButtonIcon != null,
      searchButtonLoadingSize: searchButtonLoadingSize,
      searchButtonLoadingSizeProvided: searchButtonLoadingSize != null,
    );
  }
}
