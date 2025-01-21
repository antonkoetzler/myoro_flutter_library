import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [MyoroAppBarWidgetShowcase].
final class MyoroAppBarWidgetShowcaseThemeExtension extends ThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension> {
  /// [_MockAppLogo] icon.
  final IconData mockAppLogoIcon;

  /// [_MockAppTitle] text style.
  final TextStyle mockAppTitleTextStyle;

  /// [_MockAppLogo] & [_MockAppTitle] spacing.
  final double logoTitleSpacing;

  /// [_MockMenuButton] icon.
  final IconData mockMenuButtonIcon;

  const MyoroAppBarWidgetShowcaseThemeExtension({
    required this.mockAppLogoIcon,
    required this.mockAppTitleTextStyle,
    required this.logoTitleSpacing,
    required this.mockMenuButtonIcon,
  });

  MyoroAppBarWidgetShowcaseThemeExtension.fake()
      : mockAppLogoIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
        mockAppTitleTextStyle = MyoroTypographyTheme.instance.randomTextStyle,
        logoTitleSpacing = faker.randomGenerator.decimal(),
        mockMenuButtonIcon = kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)];

  @override
  MyoroAppBarWidgetShowcaseThemeExtension copyWith({
    IconData? mockAppLogoIcon,
    TextStyle? mockAppTitleTextStyle,
    double? logoTitleSpacing,
    IconData? mockMenuButtonIcon,
  }) {
    return MyoroAppBarWidgetShowcaseThemeExtension(
      mockAppLogoIcon: mockAppLogoIcon ?? this.mockAppLogoIcon,
      mockAppTitleTextStyle: mockAppTitleTextStyle ?? this.mockAppTitleTextStyle,
      logoTitleSpacing: logoTitleSpacing ?? this.logoTitleSpacing,
      mockMenuButtonIcon: mockMenuButtonIcon ?? this.mockMenuButtonIcon,
    );
  }

  @override
  MyoroAppBarWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroAppBarWidgetShowcaseThemeExtension) return this;
    return copyWith(
      mockAppLogoIcon: myoroLerp(mockAppLogoIcon, other.mockAppLogoIcon, t),
      mockAppTitleTextStyle: TextStyle.lerp(mockAppTitleTextStyle, other.mockAppTitleTextStyle, t),
      logoTitleSpacing: lerpDouble(logoTitleSpacing, other.logoTitleSpacing, t),
      mockMenuButtonIcon: myoroLerp(mockMenuButtonIcon, other.mockMenuButtonIcon, t),
    );
  }
}
