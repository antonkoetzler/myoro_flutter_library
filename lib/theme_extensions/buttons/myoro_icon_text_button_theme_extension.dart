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

  const MyoroIconTextButtonThemeExtension({required this.textStyle});

  MyoroIconTextButtonThemeExtension.fake()
    : textStyle = MyoroTypographyDesignSystem.instance.randomTextStyle;

  MyoroIconTextButtonThemeExtension.builder(TextTheme textTheme)
    : textStyle = textTheme.bodyMedium!;

  @override
  MyoroIconTextButtonThemeExtension copyWith({TextStyle? textStyle}) {
    return MyoroIconTextButtonThemeExtension(
      textStyle: textStyle ?? this.textStyle,
    );
  }

  @override
  ThemeExtension<MyoroIconTextButtonThemeExtension> lerp(
    covariant ThemeExtension<MyoroIconTextButtonThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroIconTextButtonThemeExtension) return this;
    return copyWith(textStyle: TextStyle.lerp(textStyle, other.textStyle, t));
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconTextButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == textStyle;
  }

  @override
  int get hashCode {
    return Object.hashAll([textStyle]);
  }

  @override
  String toString() =>
      'MyoroIconTextButtonThemeExtension(\n'
      '  textStyle: $textStyle,\n'
      ');';
}
