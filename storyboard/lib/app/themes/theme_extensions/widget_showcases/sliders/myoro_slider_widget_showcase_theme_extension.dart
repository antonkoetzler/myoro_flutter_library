import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSliderWidgetShowcase].
final class MyoroSliderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  /// Size of [_Widget].
  final double widgetSize;

  /// Color of the [Container] in [_HiddenKitty].
  final Color hiddenKittyContainerColor;

  const MyoroSliderWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.widgetSize,
    required this.hiddenKittyContainerColor,
  });

  @override
  MyoroSliderWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? widgetSize,
    Color? hiddenKittyContainerColor,
  }) {
    return MyoroSliderWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      widgetSize: widgetSize ?? this.widgetSize,
      hiddenKittyContainerColor: hiddenKittyContainerColor ?? this.hiddenKittyContainerColor,
    );
  }

  @override
  ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSliderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      widgetSize: lerpDouble(widgetSize, other.widgetSize, t),
      hiddenKittyContainerColor: Color.lerp(hiddenKittyContainerColor, other.hiddenKittyContainerColor, t),
    );
  }
}
