import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroDropdownWidgetShowcase].
final class MyoroDropdownWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension> {
  /// Size of a [Color]'s [Container] in [_DropdownItem].
  final double dropdownItemColorSize;

  /// [TextStyle] of the [String] of the item in [_DropdownItem].
  final TextStyle dropdownItemTextStyle;

  /// Spacing between the [Color] & [String] in [_DropdownItem].
  final double dropdownItemSpacing;

  /// [MyoroInputStyleEnum] of [_LabelOption].
  final MyoroInputStyleEnum inputStyle;

  const MyoroDropdownWidgetShowcaseThemeExtension({
    required this.dropdownItemColorSize,
    required this.dropdownItemTextStyle,
    required this.dropdownItemSpacing,
    required this.inputStyle,
  });

  @override
  MyoroDropdownWidgetShowcaseThemeExtension copyWith({
    double? dropdownItemColorSize,
    TextStyle? dropdownItemTextStyle,
    double? dropdownItemSpacing,
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroDropdownWidgetShowcaseThemeExtension(
      dropdownItemColorSize: dropdownItemColorSize ?? this.dropdownItemColorSize,
      dropdownItemTextStyle: dropdownItemTextStyle ?? this.dropdownItemTextStyle,
      dropdownItemSpacing: dropdownItemSpacing ?? this.dropdownItemSpacing,
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDropdownWidgetShowcaseThemeExtension) return this;
    return copyWith(
      dropdownItemColorSize: lerpDouble(dropdownItemColorSize, other.dropdownItemColorSize, t),
      dropdownItemTextStyle: TextStyle.lerp(dropdownItemTextStyle, other.dropdownItemTextStyle, t),
      dropdownItemSpacing: lerpDouble(dropdownItemSpacing, other.dropdownItemSpacing, t),
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
    );
  }
}
