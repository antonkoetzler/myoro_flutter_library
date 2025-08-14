import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_sliders_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSlidersWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSlidersWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSlidersWidgetShowcaseScreenThemeExtension>
    with _$MyoroSlidersWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSlidersWidgetShowcaseScreenThemeExtension({required this.spacing});

  // coverage:ignore-start
  MyoroSlidersWidgetShowcaseScreenThemeExtension.fake() : spacing = faker.randomGenerator.decimal(scale: 20);
  // coverage:ignore-end

  const MyoroSlidersWidgetShowcaseScreenThemeExtension.builder() : spacing = kMyoroMultiplier * 4;

  // Spacing between the sliders.
  final double spacing;

  @override
  MyoroSlidersWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSlidersWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroSlidersWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(spacing: lerpDouble(spacing, other.spacing, t));
  }
}
