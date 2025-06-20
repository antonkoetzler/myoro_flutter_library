import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_circular_loader_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCircularLoaderWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroCircularLoaderWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroCircularLoaderWidgetShowcaseScreenThemeExtension>
    with _$MyoroCircularLoaderWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroCircularLoaderWidgetShowcaseScreenThemeExtension();

  const MyoroCircularLoaderWidgetShowcaseScreenThemeExtension.fake();

  const MyoroCircularLoaderWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroCircularLoaderWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroCircularLoaderWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
