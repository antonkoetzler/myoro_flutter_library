import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [MyoroPieGraphWidgetShowcase].
final class MyoroPieGraphWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension> {
  /// [BorderRadius] of [_CenterWidget].
  final BorderRadius centerWidgetBorderRadius;

  /// Width & height of [_CenterWidget].
  final double centerWidgetSize;

  const MyoroPieGraphWidgetShowcaseThemeExtension({
    required this.centerWidgetBorderRadius,
    required this.centerWidgetSize,
  });

  MyoroPieGraphWidgetShowcaseThemeExtension.fake()
    : centerWidgetBorderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(),
      ),
      centerWidgetSize = faker.randomGenerator.decimal();

  @override
  MyoroPieGraphWidgetShowcaseThemeExtension copyWith({
    BorderRadius? centerWidgetBorderRadius,
    double? centerWidgetSize,
  }) {
    return MyoroPieGraphWidgetShowcaseThemeExtension(
      centerWidgetBorderRadius:
          centerWidgetBorderRadius ?? this.centerWidgetBorderRadius,
      centerWidgetSize: centerWidgetSize ?? this.centerWidgetSize,
    );
  }

  @override
  MyoroPieGraphWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroPieGraphWidgetShowcaseThemeExtension) return this;
    return copyWith(
      centerWidgetBorderRadius: BorderRadius.lerp(
        centerWidgetBorderRadius,
        other.centerWidgetBorderRadius,
        t,
      ),
      centerWidgetSize: lerpDouble(centerWidgetSize, other.centerWidgetSize, t),
    );
  }
}
