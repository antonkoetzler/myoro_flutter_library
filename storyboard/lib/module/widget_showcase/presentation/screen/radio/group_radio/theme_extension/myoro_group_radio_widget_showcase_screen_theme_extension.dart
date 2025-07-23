import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_radio_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroGroupRadioWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroGroupRadioWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroGroupRadioWidgetShowcaseScreenThemeExtension>
    with _$MyoroGroupRadioWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroGroupRadioWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroGroupRadioWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroGroupRadioWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroGroupRadioWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupRadioWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
