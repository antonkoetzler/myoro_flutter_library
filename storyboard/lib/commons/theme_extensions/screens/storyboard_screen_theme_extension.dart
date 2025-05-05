import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [StoryboardScreen].
@immutable
final class StoryboardScreenThemeExtension extends ThemeExtension<StoryboardScreenThemeExtension> {
  /// Spacing of [Widget]s.
  final double spacing;

  /// [IconData] of [_PreviousPageButton].
  final IconData previousPageButtonIcon;

  /// [MyoroIconTextButtonConfiguration.padding] of [_PreviousPageButton].
  final EdgeInsets previousPageButtonPadding;

  /// [TextStyle] of [_HeaderTitleText].
  final TextStyle headerTitleTextStyle;

  /// [TextStyle] of [_HeaderSubtitleText].
  final TextStyle headerSubtitleTextStyle;

  /// [IconData] of [_ToggleThemeButton].
  final IconData toggleThemeButtonIcon;

  const StoryboardScreenThemeExtension({
    required this.spacing,
    required this.previousPageButtonIcon,
    required this.previousPageButtonPadding,
    required this.headerTitleTextStyle,
    required this.headerSubtitleTextStyle,
    required this.toggleThemeButtonIcon,
  });

  factory StoryboardScreenThemeExtension.fake() {
    final typography = MyoroTypographyDesignSystem.instance;

    return StoryboardScreenThemeExtension(
      spacing: faker.randomGenerator.decimal(scale: 50),
      previousPageButtonIcon:
          kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      previousPageButtonPadding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 20)),
      headerTitleTextStyle: typography.randomTextStyle,
      headerSubtitleTextStyle: typography.randomTextStyle,
      toggleThemeButtonIcon: kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
    );
  }

  StoryboardScreenThemeExtension.builder(TextTheme textTheme)
    : spacing = 20,
      previousPageButtonIcon = Icons.keyboard_arrow_left,
      previousPageButtonPadding = const EdgeInsets.all(3),
      headerTitleTextStyle = textTheme.titleMedium!,
      headerSubtitleTextStyle = textTheme.bodySmall!,
      toggleThemeButtonIcon = Icons.sunny;

  @override
  StoryboardScreenThemeExtension copyWith({
    double? spacing,
    IconData? previousPageButtonIcon,
    EdgeInsets? previousPageButtonPadding,
    TextStyle? headerTitleTextStyle,
    TextStyle? headerSubtitleTextStyle,
    IconData? toggleThemeButtonIcon,
  }) {
    return StoryboardScreenThemeExtension(
      spacing: spacing ?? this.spacing,
      previousPageButtonIcon: previousPageButtonIcon ?? this.previousPageButtonIcon,
      previousPageButtonPadding: previousPageButtonPadding ?? this.previousPageButtonPadding,
      headerTitleTextStyle: headerTitleTextStyle ?? this.headerTitleTextStyle,
      headerSubtitleTextStyle: headerSubtitleTextStyle ?? this.headerSubtitleTextStyle,
      toggleThemeButtonIcon: toggleThemeButtonIcon ?? this.toggleThemeButtonIcon,
    );
  }

  @override
  StoryboardScreenThemeExtension lerp(
    covariant ThemeExtension<StoryboardScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardScreenThemeExtension) return this;
    return copyWith(
      spacing: lerpDouble(spacing, other.spacing, t),
      previousPageButtonIcon: myoroLerp(previousPageButtonIcon, other.previousPageButtonIcon, t),
      previousPageButtonPadding: EdgeInsets.lerp(
        previousPageButtonPadding,
        other.previousPageButtonPadding,
        t,
      ),
      headerTitleTextStyle: TextStyle.lerp(headerTitleTextStyle, other.headerTitleTextStyle, t),
      headerSubtitleTextStyle: TextStyle.lerp(
        headerSubtitleTextStyle,
        other.headerSubtitleTextStyle,
        t,
      ),
      toggleThemeButtonIcon: myoroLerp(toggleThemeButtonIcon, other.toggleThemeButtonIcon, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StoryboardScreenThemeExtension &&
        other.runtimeType == runtimeType &&
        other.previousPageButtonIcon == previousPageButtonIcon &&
        other.previousPageButtonPadding == previousPageButtonPadding &&
        other.spacing == spacing &&
        other.headerTitleTextStyle == headerTitleTextStyle &&
        other.headerSubtitleTextStyle == headerSubtitleTextStyle &&
        other.toggleThemeButtonIcon == toggleThemeButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      spacing,
      previousPageButtonIcon,
      previousPageButtonPadding,
      headerTitleTextStyle,
      headerSubtitleTextStyle,
      toggleThemeButtonIcon,
    );
  }

  @override
  String toString() =>
      'StoryboardScreenThemeExtension(\n'
      '  spacing: $spacing,\n'
      '  previousPageButtonIcon: $previousPageButtonIcon,\n'
      '  previousPageButtonPadding: $previousPageButtonPadding,\n'
      '  headerTitleTextStyle: $headerTitleTextStyle,\n'
      '  headerSubtitleTextStyle: $headerSubtitleTextStyle,\n'
      '  toggleThemeButtonIcon: $toggleThemeButtonIcon,\n'
      ');';
}
