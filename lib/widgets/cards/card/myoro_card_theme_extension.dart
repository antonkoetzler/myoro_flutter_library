import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroCard].
@immutable
class MyoroCardThemeExtension extends ThemeExtension<MyoroCardThemeExtension> {
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

  MyoroCardThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : backgroundColor = colorScheme.onPrimary.withValues(alpha: 0.1),
      border = Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      padding = const EdgeInsets.all(10),
      titleCardSpacing = 10,
      textStyle = textTheme.titleMedium!;

  MyoroCardThemeExtension.fake()
    : backgroundColor = myoroFake<Color>(),
      border = myoroFake<Border>(),
      borderRadius = myoroFake<BorderRadius>(),
      padding = myoroFake<EdgeInsets>(),
      titleCardSpacing = faker.randomGenerator.decimal(),
      textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  @override
  int get hashCode {
    return Object.hash(backgroundColor, border, borderRadius, padding, titleCardSpacing, textStyle);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == backgroundColor &&
        other.border == border &&
        other.borderRadius == borderRadius &&
        other.padding == padding &&
        other.titleCardSpacing == titleCardSpacing &&
        other.textStyle == textStyle;
  }

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
  MyoroCardThemeExtension lerp(covariant ThemeExtension<MyoroCardThemeExtension>? other, double t) {
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

  @override
  String toString() =>
      'MyoroCardThemeExtension(\n'
      '  backgroundColor: $backgroundColor,\n'
      '  border: $border,\n'
      '  borderRadius: $borderRadius,\n'
      '  padding: $padding,\n'
      '  titleCardSpacing: $titleCardSpacing,\n'
      '  textStyle: $textStyle,\n'
      ');';
}
