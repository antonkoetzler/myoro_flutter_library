import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_carousel_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCarouselWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroCarouselWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension>
    with _$MyoroCarouselWidgetShowcaseThemeExtensionMixin {
  const MyoroCarouselWidgetShowcaseThemeExtension();

  const MyoroCarouselWidgetShowcaseThemeExtension.fake();

  const MyoroCarouselWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCarouselWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCarouselWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
