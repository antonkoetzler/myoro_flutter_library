import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroIconTextButton].
///
/// TODO: Needs to be tested.
class MyoroIconTextButtonThemeExtension
    extends ThemeExtension<MyoroIconTextButtonThemeExtension> {
  /// [TextStyle] of [_Text].
  final TextStyle textStyle;

  /// [Color] of [_Icon] and [_Text].
  final Color contentColor;

  const MyoroIconTextButtonThemeExtension({
    required this.textStyle,
    required this.contentColor,
  });

  MyoroIconTextButtonThemeExtension.fake()
    : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      contentColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )];

  MyoroIconTextButtonThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : textStyle = textTheme.bodyMedium!,
      contentColor = colorScheme.onPrimary;

  @override
  MyoroIconTextButtonThemeExtension copyWith({
    TextStyle? textStyle,
    Color? contentColor,
  }) {
    return MyoroIconTextButtonThemeExtension(
      textStyle: textStyle ?? this.textStyle,
      contentColor: contentColor ?? this.contentColor,
    );
  }

  @override
  ThemeExtension<MyoroIconTextButtonThemeExtension> lerp(
    covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    return copyWith(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      contentColor: Color.lerp(contentColor, other.contentColor, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == textStyle &&
        other.contentColor == contentColor;
  }

  @override
  int get hashCode {
    return Object.hash(textStyle, contentColor);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  textStyle: $textStyle,\n'
      '  contentColor: $contentColor,\n'
      ');';
}
