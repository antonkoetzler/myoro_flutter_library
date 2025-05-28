import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
@immutable
class MyoroIconTextButtonThemeExtension extends ThemeExtension<MyoroIconTextButtonThemeExtension> {
  /// Content padding.
  final EdgeInsets contentPadding;

  /// Spacing between text and icon.
  final double spacing;

  /// [TextStyle] of text.
  final TextStyle textStyle;

  const MyoroIconTextButtonThemeExtension({
    required this.contentPadding,
    required this.spacing,
    required this.textStyle,
  });

  MyoroIconTextButtonThemeExtension.fake()
    : contentPadding = myoroFake<EdgeInsets>(),
      spacing = faker.randomGenerator.decimal(scale: 20),
      textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme)
    : contentPadding = const EdgeInsets.all(5),
      spacing = 10,
      textStyle = textTheme.bodyMedium!;

  @override
  MyoroIconTextButtonThemeExtension copyWith({EdgeInsets? contentPadding, double? spacing, TextStyle? textStyle}) {
    return MyoroIconTextButtonThemeExtension(
      contentPadding: contentPadding ?? this.contentPadding,
      spacing: spacing ?? this.spacing,
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  MyoroIconTextButtonThemeExtension lerp(covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other, double t) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    return copyWith(
      contentPadding: EdgeInsets.lerp(contentPadding, other.contentPadding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.contentPadding == contentPadding &&
        other.spacing == spacing &&
        other.textStyle == textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(contentPadding, spacing, textStyle);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  contentPadding: $contentPadding,\n'
      '  spacing: $spacing,\n'
      '  textStyle: $textStyle,\n'
      ');';
}
