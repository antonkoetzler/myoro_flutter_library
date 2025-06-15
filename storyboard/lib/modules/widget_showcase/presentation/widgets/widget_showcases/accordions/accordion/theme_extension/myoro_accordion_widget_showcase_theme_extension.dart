import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_accordion_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordionWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroAccordionWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroAccordionWidgetShowcaseThemeExtension>
    with _$MyoroAccordionWidgetShowcaseThemeExtensionMixin {
  const MyoroAccordionWidgetShowcaseThemeExtension();

  const MyoroAccordionWidgetShowcaseThemeExtension.fake();

  const MyoroAccordionWidgetShowcaseThemeExtension.builder();

  @override
  MyoroAccordionWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
