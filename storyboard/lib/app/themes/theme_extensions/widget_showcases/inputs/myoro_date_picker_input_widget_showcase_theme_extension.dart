import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroDatePickerInputWidgetShowcase].
final class MyoroDatePickerInputWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of [_Widget].
  final MyoroInputStyleEnum inputStyle;

  const MyoroDatePickerInputWidgetShowcaseThemeExtension({
    required this.inputStyle,
  });

  @override
  MyoroDatePickerInputWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroDatePickerInputWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroDatePickerInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDatePickerInputWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
    );
  }
}
