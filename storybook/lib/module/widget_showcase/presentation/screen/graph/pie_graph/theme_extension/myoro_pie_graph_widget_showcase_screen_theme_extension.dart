import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storybook/storybook.dart';

part 'myoro_pie_graph_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroPieGraphWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroPieGraphWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroPieGraphWidgetShowcaseScreenThemeExtension>
    with _$MyoroPieGraphWidgetShowcaseScreenThemeExtensionMixin {
  /// [BorderRadius] of [_CenterWidget].
  final BorderRadius centerWidgetBorderRadius;

  /// Size of [_CenterWidget]'s [Image].
  final double centerWidgetSize;

  const MyoroPieGraphWidgetShowcaseScreenThemeExtension({
    required this.centerWidgetBorderRadius,
    required this.centerWidgetSize,
  });

  MyoroPieGraphWidgetShowcaseScreenThemeExtension.fake()
    : centerWidgetBorderRadius = myoroFake<BorderRadius>(),
      centerWidgetSize = faker.randomGenerator.decimal(scale: 50);

  MyoroPieGraphWidgetShowcaseScreenThemeExtension.builder()
    : centerWidgetBorderRadius = BorderRadius.circular(kMyoroBorderRadius),
      centerWidgetSize = 40;

  @override
  MyoroPieGraphWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroPieGraphWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroPieGraphWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      centerWidgetBorderRadius: BorderRadius.lerp(centerWidgetBorderRadius, other.centerWidgetBorderRadius, t),
      centerWidgetSize: lerpDouble(centerWidgetSize, other.centerWidgetSize, t),
    );
  }
}
