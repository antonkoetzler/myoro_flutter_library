import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroInputWidgetShowcase].
final class MyoroInputWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroInputWidgetShowcaseThemeExtension> {
  /// [TextStyle] of [_ConfigurationOption]'s title.
  final TextStyle configurationOptionTextStyle;

  /// Spacing in between [_ConfigurationOption]'s options.
  final double configurationOptionSpacing;

  /// [MyoroInputStyleEnum] of [MyoroInput]s being used.
  final MyoroInputStyleEnum inputStyle;

  /// Icon of [_SuffixWidget].
  final IconData suffixWidgetIcon;

  const MyoroInputWidgetShowcaseThemeExtension({
    required this.configurationOptionTextStyle,
    required this.configurationOptionSpacing,
    required this.inputStyle,
    required this.suffixWidgetIcon,
  });

  MyoroInputWidgetShowcaseThemeExtension.fake()
    : configurationOptionTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      configurationOptionSpacing = faker.randomGenerator.decimal(),
      inputStyle = MyoroInputStyleEnum.fake(),
      suffixWidgetIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )];

  MyoroInputWidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : configurationOptionTextStyle = textTheme.titleMedium!,
      configurationOptionSpacing = 20,
      inputStyle = MyoroInputStyleEnum.outlined,
      suffixWidgetIcon = Icons.flag;

  @override
  MyoroInputWidgetShowcaseThemeExtension copyWith({
    TextStyle? configurationOptionTextStyle,
    double? configurationOptionSpacing,
    MyoroInputStyleEnum? inputStyle,
    IconData? suffixWidgetIcon,
  }) {
    return MyoroInputWidgetShowcaseThemeExtension(
      configurationOptionTextStyle:
          configurationOptionTextStyle ?? this.configurationOptionTextStyle,
      configurationOptionSpacing:
          configurationOptionSpacing ?? this.configurationOptionSpacing,
      inputStyle: inputStyle ?? this.inputStyle,
      suffixWidgetIcon: suffixWidgetIcon ?? this.suffixWidgetIcon,
    );
  }

  @override
  MyoroInputWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroInputWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroInputWidgetShowcaseThemeExtension) return this;
    return copyWith(
      configurationOptionTextStyle: TextStyle.lerp(
        configurationOptionTextStyle,
        other.configurationOptionTextStyle,
        t,
      ),
      configurationOptionSpacing: lerpDouble(
        configurationOptionSpacing,
        other.configurationOptionSpacing,
        t,
      ),
      inputStyle: myoroLerp(inputStyle, other.inputStyle, t),
      suffixWidgetIcon: myoroLerp(suffixWidgetIcon, other.suffixWidgetIcon, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroInputWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.configurationOptionTextStyle == configurationOptionTextStyle &&
        other.configurationOptionSpacing == configurationOptionSpacing &&
        other.inputStyle == inputStyle &&
        other.suffixWidgetIcon == suffixWidgetIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      configurationOptionTextStyle,
      configurationOptionSpacing,
      inputStyle,
      suffixWidgetIcon,
    );
  }

  @override
  String toString() =>
      'MyoroInputWidgetShowcaseThemeExtension(\n'
      '  configurationOptionTextStyle: $configurationOptionTextStyle,\n'
      '  configurationOptionSpacing: $configurationOptionSpacing,\n'
      '  inputStyle: $inputStyle,\n'
      '  suffixWidgetIcon: $suffixWidgetIcon,\n'
      ');';
}
