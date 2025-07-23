import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_slider_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSliderWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSliderWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSliderWidgetShowcaseScreenThemeExtension>
    with _$MyoroSliderWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSliderWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroSliderWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroSliderWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroSliderWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
