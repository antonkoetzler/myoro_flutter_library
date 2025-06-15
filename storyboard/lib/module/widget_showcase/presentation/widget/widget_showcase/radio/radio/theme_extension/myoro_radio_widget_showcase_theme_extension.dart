import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_radio_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroRadioWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroRadioWidgetShowcaseThemeExtension extends ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>
    with _$MyoroRadioWidgetShowcaseThemeExtensionMixin {
  const MyoroRadioWidgetShowcaseThemeExtension();

  const MyoroRadioWidgetShowcaseThemeExtension.fake();

  const MyoroRadioWidgetShowcaseThemeExtension.builder();

  @override
  MyoroRadioWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
