import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroCard].
final class MyoroCardThemeExtension
    extends ThemeExtension<MyoroCardThemeExtension> {
  /// Background color of the card.
  final Color backgroundColor;

  /// Border of the card.
  final Border border;

  /// Border radius of the card.
  final BorderRadius borderRadius;

  /// Padding of [MyoroCard.child].
  final EdgeInsets padding;

  /// Spacing in between [_Title] & [_Card].
  final double titleCardSpacing;

  /// Text style of [MyoroCard.title].
  final TextStyle textStyle;

  const MyoroCardThemeExtension({
    required this.backgroundColor,
    required this.border,
    required this.borderRadius,
    required this.padding,
    required this.titleCardSpacing,
    required this.textStyle,
  });

  MyoroCardThemeExtension.fake()
      : backgroundColor = kMyoroTestColors[
            faker.randomGenerator.integer(kMyoroTestColors.length)],
        border = Border.all(
          width: faker.randomGenerator.integer(50, min: 1).toDouble(),
          color: kMyoroTestColors[
              faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
        borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
        padding = EdgeInsets.all(faker.randomGenerator.decimal()),
        titleCardSpacing = faker.randomGenerator.decimal(),
        textStyle = MyoroTypographyTheme.instance.randomTextStyle;

  @override
  MyoroCardThemeExtension copyWith({
    Color? backgroundColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? titleCardSpacing,
    TextStyle? textStyle,
  }) {
    return MyoroCardThemeExtension(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      border: border ?? this.border,
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      titleCardSpacing: titleCardSpacing ?? this.titleCardSpacing,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  MyoroCardThemeExtension lerp(
    covariant ThemeExtension<MyoroCardThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardThemeExtension) return this;
    return copyWith(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      border: Border.lerp(border, other.border, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      titleCardSpacing: lerpDouble(titleCardSpacing, other.titleCardSpacing, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }
}
