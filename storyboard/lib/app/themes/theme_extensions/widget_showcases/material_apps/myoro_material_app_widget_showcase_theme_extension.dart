import 'dart:ui';

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
  ThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension> lerp(
    covariant ThemeExtension<MyoroMaterialAppWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
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
}
