import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_radio_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroRadioWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroRadioWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroRadioWidgetShowcaseScreenThemeExtension>
    with _$MyoroRadioWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroRadioWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroRadioWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroRadioWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroRadioWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroRadioWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
