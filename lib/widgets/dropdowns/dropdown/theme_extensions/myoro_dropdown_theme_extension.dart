import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdown].
@immutable
@myoroThemeExtension
class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension>
    with $MyoroDropdownThemeExtensionMixin {
  /// Standard spacing between items.
  final double spacing;

  const MyoroDropdownThemeExtension({required this.spacing});

  const MyoroDropdownThemeExtension.builder() : spacing = 10;

  MyoroDropdownThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 50);

  @override
  MyoroDropdownThemeExtension lerp(covariant ThemeExtension<MyoroDropdownThemeExtension>? other, double t) {
    if (other is! MyoroDropdownThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
