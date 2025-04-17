import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroRadioWidgetShowcase].
final class MyoroRadioWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  const MyoroRadioWidgetShowcaseThemeExtension({required this.inputStyle});

  MyoroRadioWidgetShowcaseThemeExtension.fake()
    : inputStyle = MyoroInputStyleEnum.fake();

  const MyoroRadioWidgetShowcaseThemeExtension.builder()
    : inputStyle = MyoroInputStyleEnum.outlined;

  @override
  MyoroRadioWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
  }) {
    return MyoroRadioWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
    );
  }

  @override
  MyoroRadioWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroRadioWidgetShowcaseThemeExtension) return this;
    return copyWith(inputStyle: myoroLerp(inputStyle, other.inputStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRadioWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.inputStyle == inputStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([inputStyle]);
  }

  @override
  String toString() =>
      'MyoroRadioWidgetShowcaseThemeExtension(\n'
      '  inputStyle: $inputStyle,\n'
      ');';
}
