import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_accordion_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordionWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroAccordionWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroAccordionWidgetShowcaseScreenThemeExtension>
    with _$MyoroAccordionWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroAccordionWidgetShowcaseScreenThemeExtension();

  const MyoroAccordionWidgetShowcaseScreenThemeExtension.fake();

  const MyoroAccordionWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroAccordionWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
