import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroDrawerWidgetShowcase].
final class MyoroDrawerWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension> {
  /// [MyoroIconTextHoverButton.bordered] of [_Button].
  final bool buttonBordered;

  /// [MyoroInput.configuration.inputStyle] of [_TitleOption].
  final MyoroInputStyleEnum inputStyle;

  const MyoroDrawerWidgetShowcaseThemeExtension({
    required this.buttonBordered,
    required this.inputStyle,
  });

  @override
  MyoroDrawerWidgetShowcaseThemeExtension copyWith({
    bool? buttonBordered,
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroDrawerWidgetShowcaseThemeExtension(
      buttonBordered: buttonBordered ?? this.buttonBordered,
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDrawerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: MyoroLerpHelper.lerp(buttonBordered, other.buttonBordered, t),
      inputStyle: MyoroLerpHelper.lerp(inputStyle, other.inputStyle, t),
    );
  }
}
