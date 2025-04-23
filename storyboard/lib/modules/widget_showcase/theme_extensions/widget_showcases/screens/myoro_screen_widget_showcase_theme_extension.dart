import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroScreenWidgetShowcase].
final class MyoroScreenWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension> {
  /// [TextStyle] of [_AppBar]'s title text.
  final TextStyle appBarTitleTextStyle;

  /// [TextStyle] of [_AppBar]'s subtitle text.
  final TextStyle appBarSubtitleTextStyle;

  /// [IconData] of [_AppBar]'s dummy menu button.
  final IconData appBarMenuButtonIcon;

  /// [BorderRadius] of [_Body]'s [Image].
  final BorderRadius bodyImageBorderRadius;

  /// Size of [_Body]'s [Image].
  final double bodyImageSize;

  /// [TextStyle] of [_Body]'s [Text].
  final TextStyle bodyTextStyle;

  /// Spacing between the [Image] & [Text] in [_Body].
  final double bodySpacing;

  const MyoroScreenWidgetShowcaseThemeExtension({
    required this.appBarTitleTextStyle,
    required this.appBarSubtitleTextStyle,
    required this.appBarMenuButtonIcon,
    required this.bodyImageBorderRadius,
    required this.bodyImageSize,
    required this.bodyTextStyle,
    required this.bodySpacing,
  });

  MyoroScreenWidgetShowcaseThemeExtension.fake()
    : appBarTitleTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      appBarSubtitleTextStyle =
          MyoroTypographyDesignSystem.instance.randomTextStyle,
      appBarMenuButtonIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
      bodyImageBorderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(),
      ),
      bodyImageSize = faker.randomGenerator.decimal(),
      bodyTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      bodySpacing = faker.randomGenerator.decimal();

  MyoroScreenWidgetShowcaseThemeExtension.builder(TextTheme textTheme)
    : appBarTitleTextStyle = textTheme.titleMedium!.copyWith(height: 1.1),
      appBarSubtitleTextStyle = textTheme.bodySmall!.copyWith(height: 1.1),
      appBarMenuButtonIcon = Icons.menu,
      bodyImageBorderRadius = BorderRadius.circular(kMyoroBorderLength),
      bodyImageSize = 150,
      bodyTextStyle = textTheme.bodyMedium!,
      bodySpacing = 10;

  @override
  MyoroScreenWidgetShowcaseThemeExtension copyWith({
    TextStyle? appBarTitleTextStyle,
    TextStyle? appBarSubtitleTextStyle,
    IconData? appBarMenuButtonIcon,
    BorderRadius? bodyImageBorderRadius,
    double? bodyImageSize,
    TextStyle? bodyTextStyle,
    double? bodySpacing,
  }) {
    return MyoroScreenWidgetShowcaseThemeExtension(
      appBarTitleTextStyle: appBarTitleTextStyle ?? this.appBarTitleTextStyle,
      appBarSubtitleTextStyle:
          appBarSubtitleTextStyle ?? this.appBarSubtitleTextStyle,
      appBarMenuButtonIcon: appBarMenuButtonIcon ?? this.appBarMenuButtonIcon,
      bodyImageBorderRadius:
          bodyImageBorderRadius ?? this.bodyImageBorderRadius,
      bodyImageSize: bodyImageSize ?? this.bodyImageSize,
      bodyTextStyle: bodyTextStyle ?? this.bodyTextStyle,
      bodySpacing: bodySpacing ?? this.bodySpacing,
    );
  }

  @override
  MyoroScreenWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScreenWidgetShowcaseThemeExtension) return this;
    return copyWith(
      appBarTitleTextStyle: TextStyle.lerp(
        appBarTitleTextStyle,
        other.appBarTitleTextStyle,
        t,
      ),
      appBarSubtitleTextStyle: TextStyle.lerp(
        appBarSubtitleTextStyle,
        other.appBarSubtitleTextStyle,
        t,
      ),
      appBarMenuButtonIcon: myoroLerp(
        appBarMenuButtonIcon,
        other.appBarMenuButtonIcon,
        t,
      ),
      bodyImageBorderRadius: BorderRadius.lerp(
        bodyImageBorderRadius,
        other.bodyImageBorderRadius,
        t,
      ),
      bodyImageSize: lerpDouble(bodyImageSize, other.bodyImageSize, t),
      bodyTextStyle: TextStyle.lerp(bodyTextStyle, other.bodyTextStyle, t),
      bodySpacing: lerpDouble(bodySpacing, other.bodySpacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScreenWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.appBarTitleTextStyle == appBarTitleTextStyle &&
        other.appBarSubtitleTextStyle == appBarSubtitleTextStyle &&
        other.appBarMenuButtonIcon == appBarMenuButtonIcon &&
        other.bodyImageBorderRadius == bodyImageBorderRadius &&
        other.bodyImageSize == bodyImageSize &&
        other.bodyTextStyle == bodyTextStyle &&
        other.bodySpacing == bodySpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      appBarTitleTextStyle,
      appBarSubtitleTextStyle,
      appBarMenuButtonIcon,
      bodyImageBorderRadius,
      bodyImageSize,
      bodyTextStyle,
      bodySpacing,
    );
  }

  @override
  String toString() =>
      'MyoroScreenWidgetShowcaseThemeExtension(\n'
      '  appBarTitleTextStyle: $appBarTitleTextStyle,\n'
      '  appBarSubtitleTextStyle: $appBarSubtitleTextStyle,\n'
      '  appBarMenuButtonIcon: $appBarMenuButtonIcon,\n'
      '  bodyImageBorderRadius: $bodyImageBorderRadius,\n'
      '  bodyImageSize: $bodyImageSize,\n'
      '  bodyTextStyle: $bodyTextStyle,\n'
      '  bodySpacing: $bodySpacing,\n'
      ');';
}
