import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroInputWidgetShowcase].
final class MyoroInputWidgetShowcaseThemeExtension extends ThemeExtension<MyoroInputWidgetShowcaseThemeExtension> {
  /// [TextStyle] of [_ConfigurationOption]'s title.
  final TextStyle configurationOptionTextStyle;

  const MyoroInputWidgetShowcaseThemeExtension({
    required this.configurationOptionTextStyle,
  });

  @override
  MyoroInputWidgetShowcaseThemeExtension copyWith({
    TextStyle? configurationOptionTextStyle,
  }) {
    return MyoroInputWidgetShowcaseThemeExtension(
      configurationOptionTextStyle: configurationOptionTextStyle ?? this.configurationOptionTextStyle,
    );
  }

  @override
  ThemeExtension<MyoroInputWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputWidgetShowcaseThemeExtension) return this;
    return copyWith(
      configurationOptionTextStyle: TextStyle.lerp(configurationOptionTextStyle, other.configurationOptionTextStyle, t),
    );
  }
}
