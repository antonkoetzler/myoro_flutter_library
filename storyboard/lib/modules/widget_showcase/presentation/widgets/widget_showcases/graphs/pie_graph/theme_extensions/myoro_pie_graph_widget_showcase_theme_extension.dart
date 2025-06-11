import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_pie_graph_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroPieGraphWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroPieGraphWidgetShowcaseThemeExtension extends ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>
    with _$MyoroPieGraphWidgetShowcaseThemeExtensionMixin {
  /// [BorderRadius] of [_CenterWidget].
  final BorderRadius centerWidgetBorderRadius;

  /// Size of [_CenterWidget]'s [Image].
  final double centerWidgetSize;

  const MyoroPieGraphWidgetShowcaseThemeExtension({
    required this.centerWidgetBorderRadius,
    required this.centerWidgetSize,
  });

  MyoroPieGraphWidgetShowcaseThemeExtension.fake()
    : centerWidgetBorderRadius = myoroFake<BorderRadius>(),
      centerWidgetSize = faker.randomGenerator.decimal(scale: 50);

  MyoroPieGraphWidgetShowcaseThemeExtension.builder()
    : centerWidgetBorderRadius = BorderRadius.circular(kMyoroBorderLength),
      centerWidgetSize = 40;

  @override
  MyoroPieGraphWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroPieGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroPieGraphWidgetShowcaseThemeExtension) return this;
    return copyWith(
      centerWidgetBorderRadius: BorderRadius.lerp(centerWidgetBorderRadius, other.centerWidgetBorderRadius, t),
      centerWidgetSize: lerpDouble(centerWidgetSize, other.centerWidgetSize, t),
    );
  }
}
