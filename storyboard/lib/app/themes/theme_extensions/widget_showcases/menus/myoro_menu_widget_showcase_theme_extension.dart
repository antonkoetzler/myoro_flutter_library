import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroMenuWidgetShowcase].
final class MyoroMenuWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  /// Spacing in between content in [_ConstraintsOption].
  final double constraintsOptionSpacing;

  /// Text style of headers.
  final TextStyle headerTextStyle;

  const MyoroMenuWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.constraintsOptionSpacing,
    required this.headerTextStyle,
  });

  @override
  MyoroMenuWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? constraintsOptionSpacing,
    TextStyle? headerTextStyle,
  }) {
    return MyoroMenuWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      constraintsOptionSpacing: constraintsOptionSpacing ?? this.constraintsOptionSpacing,
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenuWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
      constraintsOptionSpacing: lerpDouble(constraintsOptionSpacing, other.constraintsOptionSpacing, t),
      headerTextStyle: TextStyle.lerp(headerTextStyle, other.headerTextStyle, t),
    );
  }
}
