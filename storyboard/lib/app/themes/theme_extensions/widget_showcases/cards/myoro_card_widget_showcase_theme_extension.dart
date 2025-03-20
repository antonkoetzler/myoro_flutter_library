import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroCardWidgetShowcase].
final class MyoroCardWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCardWidgetShowcaseThemeExtension> {
  /// [MyoroInputStyleEnum] of every [MyoroInput].
  final MyoroInputStyleEnum inputStyle;

  /// [TextAlign] of [_TitleOption].
  final TextAlign titleOptionTextAlign;

  /// Available [TextStyle]s of [_TitleTextStyleOption].
  final List<(String, TextStyle)> titleTextStyleOptionTextStyles;

  const MyoroCardWidgetShowcaseThemeExtension({
    required this.inputStyle,
    required this.titleOptionTextAlign,
    required this.titleTextStyleOptionTextStyles,
  });

  MyoroCardWidgetShowcaseThemeExtension.fake()
      : inputStyle = MyoroInputStyleEnum.fake(),
        titleOptionTextAlign = TextAlign.values[faker.randomGenerator.integer(
          TextAlign.values.length,
        )],
        titleTextStyleOptionTextStyles = List.generate(
          faker.randomGenerator.integer(10),
          (_) => (
            faker.lorem.word(),
            MyoroTypographyTheme.instance.randomTextStyle,
          ),
        );

  @override
  MyoroCardWidgetShowcaseThemeExtension copyWith({
    MyoroInputStyleEnum? inputStyle,
    TextAlign? titleOptionTextAlign,
    List<(String, TextStyle)>? titleTextStyleOptionTextStyles,
  }) {
    return MyoroCardWidgetShowcaseThemeExtension(
      inputStyle: inputStyle ?? this.inputStyle,
      titleOptionTextAlign: titleOptionTextAlign ?? this.titleOptionTextAlign,
      titleTextStyleOptionTextStyles:
          titleTextStyleOptionTextStyles ?? this.titleTextStyleOptionTextStyles,
    );
  }

  @override
  MyoroCardWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCardWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCardWidgetShowcaseThemeExtension) return this;
    return copyWith(
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      titleOptionTextAlign: myoroLerp(
        titleOptionTextAlign,
        other.titleOptionTextAlign,
        t,
      ),
      titleTextStyleOptionTextStyles: myoroLerp(
        titleTextStyleOptionTextStyles,
        other.titleTextStyleOptionTextStyles,
        t,
      ),
    );
  }
}
