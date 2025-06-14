import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_circular_loader_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCircularLoaderWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroCircularLoaderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>
    with _$MyoroCircularLoaderWidgetShowcaseThemeExtensionMixin {
  const MyoroCircularLoaderWidgetShowcaseThemeExtension();

  const MyoroCircularLoaderWidgetShowcaseThemeExtension.fake();

  const MyoroCircularLoaderWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCircularLoaderWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCircularLoaderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
