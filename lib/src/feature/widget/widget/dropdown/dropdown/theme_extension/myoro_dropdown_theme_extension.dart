
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
  const MyoroDropdownThemeExtension({this.spacing, this.menuBorder, this.menuBorderRadius});

  // coverage:ignore-start
  MyoroDropdownThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      menuBorder = faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      menuBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  factory MyoroDropdownThemeExtension.builder(ColorScheme colorScheme) {
    final borderSide = BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary);
    const radius = Radius.circular(kMyoroBorderRadius);

    return MyoroDropdownThemeExtension(
      spacing: kMyoroMultiplier * 2.5,
      menuBorder: BoxBorder.fromLTRB(bottom: borderSide, left: borderSide, right: borderSide),
      menuBorderRadius: const BorderRadius.only(bottomLeft: radius, bottomRight: radius),
    );
  }

  /// Standard spacing between items.
  @override
  final double? spacing;

  /// [Border] of the [MyoroMenu].
  @override
  final BoxBorder? menuBorder;

  /// [BorderRadius] of the [MyoroMenu].
  @override
  final BorderRadius? menuBorderRadius;

  @override
  MyoroDropdownThemeExtension lerp(covariant MyoroDropdownThemeExtension? other, double t) {
    if (other is! MyoroDropdownThemeExtension) return this;
    final style = MyoroDropdownStyle.lerp(this, other, t);
    return MyoroDropdownThemeExtension(
      spacing: style.spacing,
      menuBorder: style.menuBorder,
      menuBorderRadius: style.menuBorderRadius,
    );
  }
}
