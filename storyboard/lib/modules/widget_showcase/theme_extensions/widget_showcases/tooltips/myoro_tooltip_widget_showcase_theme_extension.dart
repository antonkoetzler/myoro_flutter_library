import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroTooltipWidgetShowcase].
final class MyoroTooltipWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of inputs.
  final MyoroInputStyleEnum inputStyle;

  /// Size of [_Child].
  final double childSize;

  /// [BoxDecoration] of [_Child]'s [Container].
  final BoxDecoration childDecoration;

  /// [TextStyle] of [_Child]'s [Text].
  final TextStyle childTextStyle;

  const MyoroTooltipWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.childSize,
    required this.childDecoration,
    required this.childTextStyle,
  });

  MyoroTooltipWidgetShowcaseThemeExtension.fake()
    : inputStyle = MyoroInputStyleEnum.fake(),
      childSize = faker.randomGenerator.decimal(),
      childDecoration = BoxDecoration(
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      ),
      childTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroTooltipWidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : inputStyle = MyoroInputStyleEnum.outlined,
      childSize = 300,
      childDecoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention,
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),
      ),
      childTextStyle = textTheme.titleMedium!;

  @override
  MyoroTooltipWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    double? childSize,
    BoxDecoration? childDecoration,
    TextStyle? childTextStyle,
  }) {
    return MyoroTooltipWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      childSize: childSize ?? this.childSize,
      childDecoration: childDecoration ?? this.childDecoration,
      childTextStyle: childTextStyle ?? this.childTextStyle,
    );
  }

  @override
  MyoroTooltipWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroTooltipWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTooltipWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      childSize: lerpDouble(childSize, other.childSize, t),
      childDecoration: BoxDecoration.lerp(childDecoration, other.childDecoration, t),
      childTextStyle: TextStyle.lerp(childTextStyle, other.childTextStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.inputStyle == inputStyle &&
        other.childSize == childSize &&
        other.childDecoration == childDecoration &&
        other.childTextStyle == childTextStyle;
  }

  @override
  int get hashCode {
    return Object.hash(inputStyle, childSize, childDecoration, childTextStyle);
  }

  @override
  String toString() =>
      'MyoroTooltipWidgetShowcaseThemeExtension(\n'
      '  inputStyle: $inputStyle,\n'
      '  childSize: $childSize,\n'
      '  childDecoration: $childDecoration,\n'
      '  childTextStyle: $childTextStyle,\n'
      ');';
}
