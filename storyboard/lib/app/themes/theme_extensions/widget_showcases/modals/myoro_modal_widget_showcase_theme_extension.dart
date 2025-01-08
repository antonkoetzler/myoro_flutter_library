import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroModalWidgetShowcase].
final class MyoroModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroModalWidgetShowcaseThemeExtension> {
  /// Spacing of content.
  final double spacing;

  /// Text style of headers.
  final TextStyle headerTextStyle;

  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  const MyoroModalWidgetShowcaseThemeExtension({
    required this.spacing,
    required this.headerTextStyle,
    required this.inputStyle,
  });

  @override
  MyoroModalWidgetShowcaseThemeExtension copyWith({
    double? spacing,
    TextStyle? headerTextStyle,
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroModalWidgetShowcaseThemeExtension(
      spacing: spacing ?? this.spacing,
      headerTextStyle: headerTextStyle ?? this.headerTextStyle,
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroModalWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroModalWidgetShowcaseThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      headerTextStyle: TextStyle.lerp(headerTextStyle, other.headerTextStyle, t),
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
    );
  }
}
