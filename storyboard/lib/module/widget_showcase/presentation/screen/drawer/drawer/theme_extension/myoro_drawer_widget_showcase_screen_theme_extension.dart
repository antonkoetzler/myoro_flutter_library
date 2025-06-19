import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_drawer_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDrawerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroDrawerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroDrawerWidgetShowcaseScreenThemeExtension>
    with _$MyoroDrawerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroDrawerWidgetShowcaseScreenThemeExtension();

  const MyoroDrawerWidgetShowcaseScreenThemeExtension.fake();

  const MyoroDrawerWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroDrawerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroDrawerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
