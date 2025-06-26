import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdown].
@immutable
@myoroThemeExtension
class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension>
    with _$MyoroDropdownThemeExtensionMixin {
  /// Standard spacing between items.
  final double spacing;

  /// [Border] of the [MyoroMenu].
  final BoxBorder menuBorder;

  /// [BorderRadius] of the [MyoroMenu].
  final BorderRadius menuBorderRadius;

  const MyoroDropdownThemeExtension({required this.spacing, required this.menuBorder, required this.menuBorderRadius});

  MyoroDropdownThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 50),
      menuBorder = myoroFake<BoxBorder>(),
      menuBorderRadius = myoroFake<BorderRadius>();

  factory MyoroDropdownThemeExtension.builder(ColorScheme colorScheme) {
    final borderSide = BorderSide(width: kMyoroBorderLength, color: colorScheme.onPrimary);
    const radius = Radius.circular(kMyoroBorderRadiusLength);

    return MyoroDropdownThemeExtension(
      spacing: 10,
      menuBorder: BoxBorder.fromLTRB(bottom: borderSide, left: borderSide, right: borderSide),
      menuBorderRadius: const BorderRadius.only(bottomLeft: radius, bottomRight: radius),
    );
  }

  @override
  MyoroDropdownThemeExtension lerp(covariant ThemeExtension<MyoroDropdownThemeExtension>? other, double t) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      menuBorder: BoxBorder.lerp(menuBorder, other.menuBorder, t),
      menuBorderRadius: BorderRadius.lerp(menuBorderRadius, other.menuBorderRadius, t),
    );
  }
}
