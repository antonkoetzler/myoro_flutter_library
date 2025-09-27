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
  const MyoroSearchInputThemeExtension({
    this.spacing,
    this.searchButtonIcon,
    this.searchButtonLoadingSize,
    this.menuBorder,
  });

  // coverage:ignore-start
  MyoroSearchInputThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      searchButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      searchButtonLoadingSize = faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal()
          : null,
      menuBorder = faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null;
  // coverage:ignore-end

  MyoroSearchInputThemeExtension.builder(ColorScheme colorScheme)
    : spacing = kMyoroMultiplier * 2,
      searchButtonIcon = Icons.search,
      searchButtonLoadingSize = kMyoroMultiplier * 4,
      menuBorder = Border.all(width: kMyoroBorderWidth, color: colorScheme.onPrimary);

  @override
  final double? spacing;

  @override
  final IconData? searchButtonIcon;

  @override
  final double? searchButtonLoadingSize;

  @override
  final BoxBorder? menuBorder;

  @override
  MyoroSearchInputThemeExtension lerp(covariant MyoroSearchInputThemeExtension? other, double t) {
    if (other is! MyoroSearchInputThemeExtension) return this;
    final style = MyoroSearchInputStyle.lerp(this, other, t);
    return MyoroSearchInputThemeExtension(
      spacing: style.spacing,
      searchButtonIcon: style.searchButtonIcon,
      searchButtonLoadingSize: style.searchButtonLoadingSize,
      menuBorder: style.menuBorder,
    );
  }
}
