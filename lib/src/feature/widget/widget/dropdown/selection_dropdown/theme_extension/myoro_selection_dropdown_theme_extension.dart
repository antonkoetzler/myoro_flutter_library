import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSelectionDropdown].
@immutable
@myoroThemeExtension
class MyoroSelectionDropdownThemeExtension extends ThemeExtension<MyoroSelectionDropdownThemeExtension>
    with _$MyoroSelectionDropdownThemeExtensionMixin
    implements MyoroSelectionDropdownStyle {
  const MyoroSelectionDropdownThemeExtension({this.spacing, this.menuBorder, this.menuBorderRadius});

  // coverage:ignore-start
  MyoroSelectionDropdownThemeExtension.fake()
    : spacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      menuBorder = faker.randomGenerator.boolean() ? myoroFake<BoxBorder>() : null,
      menuBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null;
  // coverage:ignore-end

  factory MyoroSelectionDropdownThemeExtension.builder(ColorScheme colorScheme) {
    final borderSide = BorderSide(width: kMyoroBorderWidth, color: colorScheme.onPrimary);
    const radius = Radius.circular(kMyoroBorderRadius);

    return MyoroSelectionDropdownThemeExtension(
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
  MyoroSelectionDropdownThemeExtension lerp(covariant MyoroSelectionDropdownThemeExtension? other, double t) {
    if (other is! MyoroSelectionDropdownThemeExtension) return this;
    final style = MyoroSelectionDropdownStyle.lerp(this, other, t);
    return MyoroSelectionDropdownThemeExtension(
      spacing: style.spacing,
      menuBorder: style.menuBorder,
      menuBorderRadius: style.menuBorderRadius,
    );
  }
}
