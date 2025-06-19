import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_slider_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSliderWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroSliderWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>
    with _$MyoroSliderWidgetShowcaseThemeExtensionMixin {
  const MyoroSliderWidgetShowcaseThemeExtension();

  const MyoroSliderWidgetShowcaseThemeExtension.fake();

  const MyoroSliderWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSliderWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSliderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
