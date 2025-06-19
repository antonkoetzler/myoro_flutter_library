import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_checkbox_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroGroupCheckboxWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension>
    with _$MyoroGroupCheckboxWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension();

  const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.fake();

  const MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupCheckboxWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
