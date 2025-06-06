import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

part 'box_constraints_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [BoxConstraintsWidgetShowcaseOption].
final class BoxConstraintsWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension>
    with $BoxConstraintsWidgetShowcaseOptionThemeExtensionMixin {
  const BoxConstraintsWidgetShowcaseOptionThemeExtension();

  const BoxConstraintsWidgetShowcaseOptionThemeExtension.fake();

  const BoxConstraintsWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension> lerp(
    covariant ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
