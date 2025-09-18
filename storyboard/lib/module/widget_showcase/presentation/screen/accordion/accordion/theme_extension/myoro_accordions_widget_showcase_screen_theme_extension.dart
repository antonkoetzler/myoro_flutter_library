import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_accordions_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordionWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroAccordionsWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroAccordionsWidgetShowcaseScreenThemeExtension>
    with _$MyoroAccordionsWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroAccordionsWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroAccordionsWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroAccordionsWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroAccordionsWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroAccordionsWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
