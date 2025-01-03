import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroScreenWidgetShowcase].
final class MyoroScreenWidgetShowcaseThemeExtension extends ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension> {
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
      appBarSubtitleTextStyle: appBarSubtitleTextStyle ?? this.appBarSubtitleTextStyle,
      appBarMenuButtonIcon: appBarMenuButtonIcon ?? this.appBarMenuButtonIcon,
      bodyImageBorderRadius: bodyImageBorderRadius ?? this.bodyImageBorderRadius,
      bodyImageSize: bodyImageSize ?? this.bodyImageSize,
      bodyTextStyle: bodyTextStyle ?? this.bodyTextStyle,
      bodySpacing: bodySpacing ?? this.bodySpacing,
    );
  }

  @override
  ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroScreenWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroScreenWidgetShowcaseThemeExtension) return this;
    return copyWith(
      appBarTitleTextStyle: TextStyle.lerp(appBarTitleTextStyle, other.appBarTitleTextStyle, t),
      appBarSubtitleTextStyle: TextStyle.lerp(appBarSubtitleTextStyle, other.appBarSubtitleTextStyle, t),
      appBarMenuButtonIcon: MyoroLerpHelper.lerp(appBarMenuButtonIcon, other.appBarMenuButtonIcon, t),
      bodyImageBorderRadius: BorderRadius.lerp(bodyImageBorderRadius, other.bodyImageBorderRadius, t),
      bodyImageSize: lerpDouble(bodyImageSize, other.bodyImageSize, t),
      bodyTextStyle: TextStyle.lerp(bodyTextStyle, other.bodyTextStyle, t),
      bodySpacing: 10,
    );
  }
}
