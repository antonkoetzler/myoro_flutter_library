import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storybook/storybook.dart';

part 'myoro_group_checkbox_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroGroupCheckboxWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension>
    with _$MyoroGroupCheckboxWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension({
    required this.spacingOptionsMinValue,
    required this.spacingOptionsMaxValue,
  });

  factory MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.fake() {
    const spacingOptionsMinValue = 0.0;

    return MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension(
      spacingOptionsMinValue: spacingOptionsMinValue,
      spacingOptionsMaxValue: faker.randomGenerator.decimal(scale: 100, min: spacingOptionsMinValue),
    );
  }

  const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.builder()
    : spacingOptionsMinValue = 0,
      spacingOptionsMaxValue = 50;

  /// [MyoroSliderConfiguration.min] of the sliders for
  /// [MyoroGroupCheckboxConfiguration.spacing] and [MyoroGroupCheckboxConfiguration.runSpacing]
  final double spacingOptionsMinValue;

  /// [MyoroSliderConfiguration.max] of the sliders for
  /// [MyoroGroupCheckboxConfiguration.spacing] and [MyoroGroupCheckboxConfiguration.runSpacing]
  final double spacingOptionsMaxValue;

  @override
  MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(
      spacingOptionsMinValue: lerpDouble(spacingOptionsMinValue, other.spacingOptionsMinValue, t),
      spacingOptionsMaxValue: lerpDouble(spacingOptionsMaxValue, other.spacingOptionsMaxValue, t),
    );
  }
}
