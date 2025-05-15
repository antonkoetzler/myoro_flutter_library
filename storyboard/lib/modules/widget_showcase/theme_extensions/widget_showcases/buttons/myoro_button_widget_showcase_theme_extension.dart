import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroButtonWidgetShowcase].
final class MyoroButtonWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroButtonWidgetShowcaseThemeExtension> {
  /// Default spacing between various [Widget]s.
  final double spacing;

  /// Default width of [_Widget]'s [_borderBuilder].
  final double borderWidth;

  /// [EdgeInsets] of [_ButtonContent].
  final EdgeInsets buttonContentPadding;

  /// Size of [_ButtonContentImage]'s [Image].
  final double buttonContentImageSize;

  /// [TextStyle] of [_ButtonContentText].
  final TextStyle buttonContentTextStyle;

  /// [Color]s applied to [buttonContentTextStyle].
  final Color buttonContentTextIdleColor;
  final Color buttonContentTextHoverColor;
  final Color buttonContentTextTapColor;

  const MyoroButtonWidgetShowcaseThemeExtension({
    required this.spacing,
    required this.borderWidth,
    required this.buttonContentPadding,
    required this.buttonContentImageSize,
    required this.buttonContentTextStyle,
    required this.buttonContentTextIdleColor,
    required this.buttonContentTextHoverColor,
    required this.buttonContentTextTapColor,
  });

  MyoroButtonWidgetShowcaseThemeExtension.fake()
    : spacing = faker.randomGenerator.decimal(scale: 20),
      borderWidth = faker.randomGenerator.decimal(scale: 20),
      buttonContentPadding = myoroFake<EdgeInsets>(),
      buttonContentImageSize = faker.randomGenerator.decimal(
        scale: 100,
        min: 10,
      ),
      buttonContentTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      buttonContentTextIdleColor = myoroFake<Color>(),
      buttonContentTextHoverColor = myoroFake<Color>(),
      buttonContentTextTapColor = myoroFake<Color>();

  MyoroButtonWidgetShowcaseThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) : spacing = 10,
      borderWidth = kMyoroBorderLength,
      buttonContentPadding = const EdgeInsets.all(10),
      buttonContentImageSize = 50,
      buttonContentTextStyle = textTheme.headlineMedium!,
      buttonContentTextIdleColor = colorScheme.onPrimary,
      buttonContentTextHoverColor = MyoroColorDesignSystem.attention,
      buttonContentTextTapColor = colorScheme.error;

  @override
  MyoroButtonWidgetShowcaseThemeExtension copyWith({
    double? spacing,
    double? borderWidth,
    EdgeInsets? buttonContentPadding,
    double? buttonContentImageSize,
    TextStyle? buttonContentTextStyle,
    Color? buttonContentTextIdleColor,
    Color? buttonContentTextHoverColor,
    Color? buttonContentTextTapColor,
  }) {
    return MyoroButtonWidgetShowcaseThemeExtension(
      spacing: spacing ?? this.spacing,
      borderWidth: borderWidth ?? this.borderWidth,
      buttonContentPadding: buttonContentPadding ?? this.buttonContentPadding,
      buttonContentImageSize:
          buttonContentImageSize ?? this.buttonContentImageSize,
      buttonContentTextStyle:
          buttonContentTextStyle ?? this.buttonContentTextStyle,
      buttonContentTextIdleColor:
          buttonContentTextIdleColor ?? this.buttonContentTextIdleColor,
      buttonContentTextHoverColor:
          buttonContentTextHoverColor ?? this.buttonContentTextHoverColor,
      buttonContentTextTapColor:
          buttonContentTextTapColor ?? this.buttonContentTextTapColor,
    );
  }

  @override
  MyoroButtonWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroButtonWidgetShowcaseThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t),
      buttonContentPadding: EdgeInsets.lerp(
        buttonContentPadding,
        other.buttonContentPadding,
        t,
      ),
      buttonContentImageSize: lerpDouble(
        buttonContentImageSize,
        other.buttonContentImageSize,
        t,
      ),
      buttonContentTextStyle: TextStyle.lerp(
        buttonContentTextStyle,
        other.buttonContentTextStyle,
        t,
      ),
      buttonContentTextIdleColor: Color.lerp(
        buttonContentTextIdleColor,
        other.buttonContentTextIdleColor,
        t,
      ),
      buttonContentTextHoverColor: Color.lerp(
        buttonContentTextHoverColor,
        other.buttonContentTextHoverColor,
        t,
      ),
      buttonContentTextTapColor: Color.lerp(
        buttonContentTextTapColor,
        other.buttonContentTextTapColor,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.spacing == spacing &&
        other.borderWidth == borderWidth &&
        other.buttonContentPadding == buttonContentPadding &&
        other.buttonContentImageSize == buttonContentImageSize &&
        other.buttonContentTextStyle == buttonContentTextStyle &&
        other.buttonContentTextIdleColor == buttonContentTextIdleColor &&
        other.buttonContentTextHoverColor == buttonContentTextHoverColor &&
        other.buttonContentTextTapColor == buttonContentTextTapColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      spacing,
      borderWidth,
      buttonContentPadding,
      buttonContentImageSize,
      buttonContentTextStyle,
      buttonContentTextIdleColor,
      buttonContentTextHoverColor,
      buttonContentTextTapColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonWidgetShowcaseThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  borderWidth: $borderWidth,\n'
      '  buttonContentPadding: $buttonContentPadding,\n'
      '  buttonContentImageSize: $buttonContentImageSize,\n'
      '  buttonContentTextStyle: $buttonContentTextStyle,\n'
      '  buttonContentTextIdleColor: $buttonContentTextIdleColor,\n'
      '  buttonContentTextHoverColor: $buttonContentTextHoverColor,\n'
      '  buttonContentTextTapColor: $buttonContentTextTapColor,\n'
      ');';
}
