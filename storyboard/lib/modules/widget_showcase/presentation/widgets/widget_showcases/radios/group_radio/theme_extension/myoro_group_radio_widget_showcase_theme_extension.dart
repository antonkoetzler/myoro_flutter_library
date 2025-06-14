import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_radio_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroGroupRadioWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroGroupRadioWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension>
    with _$MyoroGroupRadioWidgetShowcaseThemeExtensionMixin {
  const MyoroGroupRadioWidgetShowcaseThemeExtension();

  const MyoroGroupRadioWidgetShowcaseThemeExtension.fake();

  const MyoroGroupRadioWidgetShowcaseThemeExtension.builder();

  @override
  MyoroGroupRadioWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupRadioWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
