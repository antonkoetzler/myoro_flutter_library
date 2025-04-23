import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroDrawerWidgetShowcase].
final class MyoroDrawerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension> {
  /// [MyoroIconTextHoverButton.bordered] of [_Button].
  final bool buttonBordered;

  /// [MyoroInput.configuration.inputStyle] of [_TitleOption].
  final MyoroInputStyleEnum inputStyle;

  const MyoroDrawerWidgetShowcaseThemeExtension({
    required this.buttonBordered,
    required this.inputStyle,
  });

  MyoroDrawerWidgetShowcaseThemeExtension.fake()
    : buttonBordered = faker.randomGenerator.boolean(),
      inputStyle = MyoroInputStyleEnum.fake();

  const MyoroDrawerWidgetShowcaseThemeExtension.builder()
    : buttonBordered = true,
      inputStyle = MyoroInputStyleEnum.outlined;

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
  MyoroDrawerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroDrawerWidgetShowcaseThemeExtension) return this;
    return copyWith(
      buttonBordered: myoroLerp(buttonBordered, other.buttonBordered, t),
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDrawerWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.buttonBordered == buttonBordered &&
        other.inputStyle == inputStyle;
  }

  @override
  int get hashCode {
    return Object.hash(buttonBordered, inputStyle);
  }

  @override
  String toString() =>
      'MyoroDrawerWidgetShowcaseThemeExtension(\n'
      '  buttonBordered: $buttonBordered,\n'
      '  inputStyle: $inputStyle,\n'
      ');';
}
