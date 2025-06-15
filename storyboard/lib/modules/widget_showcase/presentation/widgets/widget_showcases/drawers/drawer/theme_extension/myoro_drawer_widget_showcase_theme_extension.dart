import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_drawer_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDrawerWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroDrawerWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>
    with _$MyoroDrawerWidgetShowcaseThemeExtensionMixin {
  const MyoroDrawerWidgetShowcaseThemeExtension();

  const MyoroDrawerWidgetShowcaseThemeExtension.fake();

  const MyoroDrawerWidgetShowcaseThemeExtension.builder();

  @override
  MyoroDrawerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDrawerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
