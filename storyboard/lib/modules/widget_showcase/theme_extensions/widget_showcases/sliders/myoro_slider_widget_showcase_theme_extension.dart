import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroSliderWidgetShowcase].
@immutable
final class MyoroSliderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension> {
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

  MyoroSliderWidgetShowcaseThemeExtension.fake()
    : inputStyle = MyoroInputStyleEnum.fake(),
      widgetSize = faker.randomGenerator.decimal(),
      hiddenKittyContainerColor =
          kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)];

  MyoroSliderWidgetShowcaseThemeExtension.builder(ColorScheme colorScheme)
    : inputStyle = MyoroInputStyleEnum.outlined,
      widgetSize = 300,
      hiddenKittyContainerColor = colorScheme.onPrimary;

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
  MyoroSliderWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSliderWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      widgetSize: lerpDouble(widgetSize, other.widgetSize, t),
      hiddenKittyContainerColor: Color.lerp(
        hiddenKittyContainerColor,
        other.hiddenKittyContainerColor,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSliderWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.inputStyle == inputStyle &&
        other.widgetSize == widgetSize &&
        other.hiddenKittyContainerColor == hiddenKittyContainerColor;
  }

  @override
  int get hashCode {
    return Object.hash(inputStyle, widgetSize, hiddenKittyContainerColor);
  }

  @override
  String toString() =>
      'MyoroSliderWidgetShowcaseThemeExtension(\n'
      '  inputStyle: $inputStyle,\n'
      '  widgetSize: $widgetSize,\n'
      '  hiddenKittyContainerColor: $hiddenKittyContainerColor,\n'
      ');';
}
