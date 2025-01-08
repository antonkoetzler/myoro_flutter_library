import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroRadioWidgetShowcase].
final class MyoroRadioWidgetShowcaseThemeExtension extends ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  const MyoroRadioWidgetShowcaseThemeExtension({
    required this.inputStyle,
  });

  @override
  MyoroRadioWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroRadioWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroRadioWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
    );
  }
}
