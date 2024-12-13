import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroLayoutBuilderWidgetShowcase].
final class MyoroLayoutBuilderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension> {
  /// [TextStyle] of everything.
  final TextStyle textStyle;

  /// Width of [_WidgetOptions].
  final double descriptionWidth;

  const MyoroLayoutBuilderWidgetShowcaseThemeExtension({
    required this.textStyle,
    required this.descriptionWidth,
  });

  @override
  MyoroLayoutBuilderWidgetShowcaseThemeExtension copyWith({
    TextStyle? textStyle,
    double? descriptionWidth,
  }) {
    return MyoroLayoutBuilderWidgetShowcaseThemeExtension(
      textStyle: textStyle ?? this.textStyle,
      descriptionWidth: descriptionWidth ?? this.descriptionWidth,
    );
  }

  @override
  ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroLayoutBuilderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      descriptionWidth: lerpDouble(descriptionWidth, other.descriptionWidth, t),
    );
  }
}
