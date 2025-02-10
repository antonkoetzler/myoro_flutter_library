import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroDialogModalWidgetShowcase].
final class MyoroDialogModalWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  /// Border radius of [_Child].
  final BorderRadius childBorderRadius;

  const MyoroDialogModalWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.childBorderRadius,
  });

  MyoroDialogModalWidgetShowcaseThemeExtension.fake()
      : inputStyle = MyoroInputStyleEnum.fake(),
        childBorderRadius = BorderRadius.circular(faker.randomGenerator.decimal());

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    BorderRadius? childBorderRadius,
  }) {
    return MyoroDialogModalWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      childBorderRadius: childBorderRadius ?? this.childBorderRadius,
    );
  }

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDialogModalWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      childBorderRadius: BorderRadius.lerp(childBorderRadius, other.childBorderRadius, t),
    );
  }
}
