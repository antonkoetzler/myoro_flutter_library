import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_carousel_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCarouselWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroCarouselWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroCarouselWidgetShowcaseScreenThemeExtension>
    with _$MyoroCarouselWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroCarouselWidgetShowcaseScreenThemeExtension();

  const MyoroCarouselWidgetShowcaseScreenThemeExtension.fake();

  const MyoroCarouselWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroCarouselWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroCarouselWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
