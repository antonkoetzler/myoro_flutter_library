import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdown].
@immutable
@myoroThemeExtension
class MyoroDropdownThemeExtension extends ThemeExtension<MyoroDropdownThemeExtension>
    with _$MyoroDropdownThemeExtensionMixin
    implements MyoroDropdownStyle {
  const MyoroDropdownThemeExtension({this.spacing});

  // coverage:ignore-start
  MyoroDropdownThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 50);
  // coverage:ignore-end

  const MyoroDropdownThemeExtension.builder(ColorScheme colorScheme) : spacing = kMyoroMultiplier * 2;

  @override
  final double? spacing;

  @override
  MyoroDropdownThemeExtension lerp(covariant MyoroDropdownThemeExtension? other, double t) {
    if (other is! MyoroDropdownThemeExtension) return this;
    final style = MyoroDropdownStyle.lerp(this, other, t);
    return MyoroDropdownThemeExtension(spacing: style.spacing);
  }
}
