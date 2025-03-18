import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [StoryboardAppBar].
///
/// No defaults here as [StoryboardAppBar]'s UI is very fixed to
/// [StoryboardAppBar.preferredSize]'s height. So, for example,
/// increasing the spacing of the title & header would cause an
/// overflow.
final class StoryboardAppBarThemeExtension
    extends ThemeExtension<StoryboardAppBarThemeExtension> {
  /// [TextStyle] of the title in [_TitleHeader].
  final TextStyle titleTextStyle;

  /// [TextStyle] of the subtitle in [_TitleHeader].
  final TextStyle subtitleTextStyle;

  /// Icon for the button that toggles [_WidgetOptions] in [WidgetShowcase].
  final IconData showWidgetOptionsButtonIcon;

  /// Icon for the theme button.
  final IconData themeButtonIcon;

  /// Spacing of the show menu and theme button.
  final double buttonSpacing;

  const StoryboardAppBarThemeExtension({
    required this.titleTextStyle,
    required this.subtitleTextStyle,
    required this.showWidgetOptionsButtonIcon,
    required this.themeButtonIcon,
    required this.buttonSpacing,
  });

  StoryboardAppBarThemeExtension.fake()
      : titleTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        subtitleTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        showWidgetOptionsButtonIcon = kMyoroTestIcons[
            faker.randomGenerator.integer(kMyoroTestIcons.length)],
        themeButtonIcon = kMyoroTestIcons[
            faker.randomGenerator.integer(kMyoroTestIcons.length)],
        buttonSpacing = faker.randomGenerator.decimal();

  @override
  StoryboardAppBarThemeExtension copyWith({
    TextStyle? titleTextStyle,
    TextStyle? subtitleTextStyle,
    IconData? showWidgetOptionsButtonIcon,
    IconData? themeButtonIcon,
    double? buttonSpacing,
  }) {
    return StoryboardAppBarThemeExtension(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
      showWidgetOptionsButtonIcon:
          showWidgetOptionsButtonIcon ?? this.showWidgetOptionsButtonIcon,
      themeButtonIcon: themeButtonIcon ?? this.themeButtonIcon,
      buttonSpacing: buttonSpacing ?? this.buttonSpacing,
    );
  }

  @override
  StoryboardAppBarThemeExtension lerp(
    covariant ThemeExtension<StoryboardAppBarThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardAppBarThemeExtension) return this;
    return copyWith(
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      subtitleTextStyle:
          TextStyle.lerp(subtitleTextStyle, other.subtitleTextStyle, t),
      showWidgetOptionsButtonIcon: myoroLerp(
          showWidgetOptionsButtonIcon, other.showWidgetOptionsButtonIcon, t),
      themeButtonIcon: myoroLerp(themeButtonIcon, other.themeButtonIcon, t),
      buttonSpacing: lerpDouble(buttonSpacing, other.buttonSpacing, t),
    );
  }
}
