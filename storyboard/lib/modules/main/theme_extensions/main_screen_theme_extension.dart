import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MainScreen].
///
/// TODO: Needs to be tested.
final class MainScreenThemeExtension
    extends ThemeExtension<MainScreenThemeExtension> {
  /// [TextStyle] of [_HeaderTitleText].
  final TextStyle headerTitleTextStyle;

  /// [TextStyle] of [_HeaderSubtitleText].
  final TextStyle headerSubtitleTextStyle;

  /// Spacing between [_Header] and [_ToggleThemeButton] in [_AppBar].
  final double headerToggleThemeButtonSpacing;

  /// [IconData] of [_ToggleThemeButton].
  final IconData toggleThemeButtonIcon;

  const MainScreenThemeExtension({
    required this.headerTitleTextStyle,
    required this.headerSubtitleTextStyle,
    required this.headerToggleThemeButtonSpacing,
    required this.toggleThemeButtonIcon,
  });

  factory MainScreenThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return MainScreenThemeExtension(
      headerTitleTextStyle: typography.randomTextStyle,
      headerSubtitleTextStyle: typography.randomTextStyle,
      headerToggleThemeButtonSpacing: faker.randomGenerator.decimal(scale: 50),
      toggleThemeButtonIcon:
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
    );
  }

  MainScreenThemeExtension.builder(TextTheme textTheme)
    : headerTitleTextStyle = textTheme.titleMedium!,
      headerSubtitleTextStyle = textTheme.bodySmall!,
      headerToggleThemeButtonSpacing = 20,
      toggleThemeButtonIcon = Icons.sunny;

  @override
  MainScreenThemeExtension copyWith({
    TextStyle? headerTitleTextStyle,
    TextStyle? headerSubtitleTextStyle,
    double? headerToggleThemeButtonSpacing,
    IconData? toggleThemeButtonIcon,
    TextStyle? categoryButtonTextStyle,
    MyoroHoverButtonConfiguration? categoryButtonConfiguration,
  }) {
    return MainScreenThemeExtension(
      headerTitleTextStyle: headerTitleTextStyle ?? this.headerTitleTextStyle,
      headerSubtitleTextStyle:
          headerSubtitleTextStyle ?? this.headerSubtitleTextStyle,
      headerToggleThemeButtonSpacing:
          headerToggleThemeButtonSpacing ?? this.headerToggleThemeButtonSpacing,
      toggleThemeButtonIcon:
          toggleThemeButtonIcon ?? this.toggleThemeButtonIcon,
    );
  }

  @override
  MainScreenThemeExtension lerp(
    covariant ThemeExtension<MainScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MainScreenThemeExtension) return this;
    return copyWith(
      headerTitleTextStyle: TextStyle.lerp(
        headerTitleTextStyle,
        other.headerTitleTextStyle,
        t,
      ),
      headerSubtitleTextStyle: TextStyle.lerp(
        headerSubtitleTextStyle,
        other.headerSubtitleTextStyle,
        t,
      ),
      headerToggleThemeButtonSpacing: lerpDouble(
        headerToggleThemeButtonSpacing,
        other.headerToggleThemeButtonSpacing,
        t,
      ),
      toggleThemeButtonIcon: myoroLerp(
        toggleThemeButtonIcon,
        other.toggleThemeButtonIcon,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MainScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.headerTitleTextStyle == headerTitleTextStyle &&
        other.headerSubtitleTextStyle == headerSubtitleTextStyle &&
        other.headerToggleThemeButtonSpacing ==
            headerToggleThemeButtonSpacing &&
        other.toggleThemeButtonIcon == toggleThemeButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      headerTitleTextStyle,
      headerSubtitleTextStyle,
      headerToggleThemeButtonSpacing,
      toggleThemeButtonIcon,
    );
  }

  @override
  String toString() =>
      'MainScreenThemeExtension(\n'
      '  headerTitleTextStyle: $headerTitleTextStyle,\n'
      '  headerSubtitleTextStyle: $headerSubtitleTextStyle,\n'
      '  headerToggleThemeButtonSpacing: $headerToggleThemeButtonSpacing,\n'
      '  toggleThemeButtonIcon: $toggleThemeButtonIcon,\n'
      ');';
}
