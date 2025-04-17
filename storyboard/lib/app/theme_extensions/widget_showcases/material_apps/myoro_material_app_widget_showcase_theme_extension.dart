import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroMaterialAppWidgetShowcase].
final class MyoroMaterialAppWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension> {
  /// Color of the content in [_AppBar].
  final Color appBarContentColor;

  /// "Logo" in [_AppBar].
  final IconData appBarLogoIcon;

  /// Text style of the text in [_AppBar].
  final TextStyle appBarTextStyle;

  /// Icon of the dummy menu button in [_AppBar].
  final IconData appBarMenuButtonIcon;

  /// Spacing in between items in [_AppBar].
  final double appBarSpacing;

  /// If [_ThemeModeOption]'s button is bordered.
  final bool themeModeOptionButtonBordered;

  /// Icon of [_ThemeModeOption]'s button when in dark mode.
  final IconData themeModeOptionButtonDarkModeIcon;

  /// Icon of [_ThemeModeOption]'s button when in light mode.
  final IconData themeModeOptionButtonLightModeIcon;

  /// Text style of [_ThemeModeOption]'s text.
  final TextStyle themeModeOptionTextStyle;

  /// Spacing between [_ThemeModeOption]'s button & text.
  final double themeModeOptionSpacing;

  const MyoroMaterialAppWidgetShowcaseThemeExtension({
    required this.appBarContentColor,
    required this.appBarLogoIcon,
    required this.appBarTextStyle,
    required this.appBarMenuButtonIcon,
    required this.appBarSpacing,
    required this.themeModeOptionButtonBordered,
    required this.themeModeOptionButtonDarkModeIcon,
    required this.themeModeOptionButtonLightModeIcon,
    required this.themeModeOptionTextStyle,
    required this.themeModeOptionSpacing,
  });

  MyoroMaterialAppWidgetShowcaseThemeExtension.fake()
    : appBarContentColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      appBarLogoIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      appBarTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      appBarMenuButtonIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      appBarSpacing = faker.randomGenerator.decimal(),
      themeModeOptionButtonBordered = faker.randomGenerator.boolean(),
      themeModeOptionButtonDarkModeIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      themeModeOptionButtonLightModeIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      themeModeOptionTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      themeModeOptionSpacing = faker.randomGenerator.decimal();

  MyoroMaterialAppWidgetShowcaseThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : appBarContentColor = colorScheme.onPrimary,
      appBarLogoIcon = Icons.work,
      appBarTextStyle = textTheme.titleLarge!,
      appBarMenuButtonIcon = Icons.menu,
      appBarSpacing = 10,
      themeModeOptionButtonBordered = true,
      themeModeOptionButtonDarkModeIcon = Icons.dark_mode,
      themeModeOptionButtonLightModeIcon = Icons.light_mode,
      themeModeOptionTextStyle = textTheme.headlineSmall!,
      themeModeOptionSpacing = 10;

  @override
  MyoroMaterialAppWidgetShowcaseThemeExtension copyWith({
    Color? appBarContentColor,
    IconData? appBarLogoIcon,
    TextStyle? appBarTextStyle,
    IconData? appBarMenuButtonIcon,
    double? appBarSpacing,
    bool? themeModeOptionButtonBordered,
    IconData? themeModeOptionButtonDarkModeIcon,
    IconData? themeModeOptionButtonLightModeIcon,
    TextStyle? themeModeOptionTextStyle,
    double? themeModeOptionSpacing,
  }) {
    return MyoroMaterialAppWidgetShowcaseThemeExtension(
      appBarContentColor: appBarContentColor ?? this.appBarContentColor,
      appBarLogoIcon: appBarLogoIcon ?? this.appBarLogoIcon,
      appBarTextStyle: appBarTextStyle ?? this.appBarTextStyle,
      appBarMenuButtonIcon: appBarMenuButtonIcon ?? this.appBarMenuButtonIcon,
      appBarSpacing: appBarSpacing ?? this.appBarSpacing,
      themeModeOptionButtonBordered: themeModeOptionButtonBordered ?? this.themeModeOptionButtonBordered,
      themeModeOptionButtonDarkModeIcon: themeModeOptionButtonDarkModeIcon ?? this.themeModeOptionButtonDarkModeIcon,
      themeModeOptionButtonLightModeIcon: themeModeOptionButtonLightModeIcon ?? this.themeModeOptionButtonLightModeIcon,
      themeModeOptionTextStyle: themeModeOptionTextStyle ?? this.themeModeOptionTextStyle,
      themeModeOptionSpacing: themeModeOptionSpacing ?? this.themeModeOptionSpacing,
    );
  }

  @override
  MyoroMaterialAppWidgetShowcaseThemeExtension lerp(covariant ThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>? other, double t) {
    if (other is! MyoroMaterialAppWidgetShowcaseThemeExtension) return this;
    return copyWith(
      appBarContentColor: Color.lerp(appBarContentColor, other.appBarContentColor, t),
      appBarLogoIcon: myoroLerp(appBarLogoIcon, other.appBarLogoIcon, t),
      appBarTextStyle: TextStyle.lerp(appBarTextStyle, other.appBarTextStyle, t),
      appBarMenuButtonIcon: myoroLerp(appBarMenuButtonIcon, other.appBarMenuButtonIcon, t),
      appBarSpacing: lerpDouble(appBarSpacing, other.appBarSpacing, t),
      themeModeOptionButtonBordered: myoroLerp(themeModeOptionButtonBordered, other.themeModeOptionButtonBordered, t),
      themeModeOptionButtonDarkModeIcon: myoroLerp(themeModeOptionButtonDarkModeIcon, other.themeModeOptionButtonDarkModeIcon, t),
      themeModeOptionButtonLightModeIcon: myoroLerp(themeModeOptionButtonLightModeIcon, other.themeModeOptionButtonLightModeIcon, t),
      themeModeOptionTextStyle: TextStyle.lerp(themeModeOptionTextStyle, other.themeModeOptionTextStyle, t),
      themeModeOptionSpacing: lerpDouble(themeModeOptionSpacing, other.themeModeOptionSpacing, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroMaterialAppWidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.appBarContentColor == appBarContentColor &&
        other.appBarLogoIcon == appBarLogoIcon &&
        other.appBarTextStyle == appBarTextStyle &&
        other.appBarMenuButtonIcon == appBarMenuButtonIcon &&
        other.appBarSpacing == appBarSpacing &&
        other.themeModeOptionButtonBordered == themeModeOptionButtonBordered &&
        other.themeModeOptionButtonDarkModeIcon == themeModeOptionButtonDarkModeIcon &&
        other.themeModeOptionButtonLightModeIcon == themeModeOptionButtonLightModeIcon &&
        other.themeModeOptionTextStyle == themeModeOptionTextStyle &&
        other.themeModeOptionSpacing == themeModeOptionSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(
      appBarContentColor,
      appBarLogoIcon,
      appBarTextStyle,
      appBarMenuButtonIcon,
      appBarSpacing,
      themeModeOptionButtonBordered,
      themeModeOptionButtonDarkModeIcon,
      themeModeOptionButtonLightModeIcon,
      themeModeOptionTextStyle,
      themeModeOptionSpacing,
    );
  }

  @override
  String toString() =>
      'MyoroMaterialAppWidgetShowcaseThemeExtension(\n'
      '  appBarContentColor: $appBarContentColor,\n'
      '  appBarLogoIcon: $appBarLogoIcon,\n'
      '  appBarTextStyle: $appBarTextStyle,\n'
      '  appBarMenuButtonIcon: $appBarMenuButtonIcon,\n'
      '  appBarSpacing: $appBarSpacing,\n'
      '  themeModeOptionButtonBordered: $themeModeOptionButtonBordered,\n'
      '  themeModeOptionButtonDarkModeIcon: $themeModeOptionButtonDarkModeIcon,\n'
      '  themeModeOptionButtonLightModeIcon: $themeModeOptionButtonLightModeIcon,\n'
      '  themeModeOptionTextStyle: $themeModeOptionTextStyle,\n'
      '  themeModeOptionSpacing: $themeModeOptionSpacing,\n'
      ');';
}
