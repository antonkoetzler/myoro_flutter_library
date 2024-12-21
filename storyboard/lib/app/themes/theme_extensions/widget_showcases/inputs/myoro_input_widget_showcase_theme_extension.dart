import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroInputWidgetShowcase].
final class MyoroInputWidgetShowcaseThemeExtension extends ThemeExtension<MyoroInputWidgetShowcaseThemeExtension> {
  /// [TextStyle] of [_ConfigurationOption]'s title.
  final TextStyle configurationOptionTextStyle;

  /// Spacing in between [_ConfigurationOption]'s options.
  final double configurationOptionSpacing;

  /// [MyoroInputStyleEnum] of [MyoroInput]s being used.
  final MyoroInputStyleEnum inputStyle;

  /// Icon of [_SuffixWidget].
  final IconData suffixWidgetIcon;

  const MyoroInputWidgetShowcaseThemeExtension({
    required this.configurationOptionTextStyle,
    required this.configurationOptionSpacing,
    required this.inputStyle,
    required this.suffixWidgetIcon,
  });

  @override
  MyoroInputWidgetShowcaseThemeExtension copyWith({
    TextStyle? configurationOptionTextStyle,
    double? configurationOptionSpacing,
    MyoroInputStyleEnum? inputStyle,
    IconData? suffixWidgetIcon,
  }) {
    return MyoroInputWidgetShowcaseThemeExtension(
      configurationOptionTextStyle: configurationOptionTextStyle ?? this.configurationOptionTextStyle,
      configurationOptionSpacing: configurationOptionSpacing ?? this.configurationOptionSpacing,
      inputStyle: inputStyle ?? this.inputStyle,
      suffixWidgetIcon: suffixWidgetIcon ?? this.suffixWidgetIcon,
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
      configurationOptionSpacing: lerpDouble(configurationOptionSpacing, other.configurationOptionSpacing, t),
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
      suffixWidgetIcon: MyoroLerpHelper.lerp(suffixWidgetIcon, other.suffixWidgetIcon, t),
    );
  }
}
