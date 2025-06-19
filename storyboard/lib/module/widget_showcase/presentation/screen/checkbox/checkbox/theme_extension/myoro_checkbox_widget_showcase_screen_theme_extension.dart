import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_checkbox_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCheckboxWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroCheckboxWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroCheckboxWidgetShowcaseScreenThemeExtension>
    with _$MyoroCheckboxWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroCheckboxWidgetShowcaseScreenThemeExtension();

  const MyoroCheckboxWidgetShowcaseScreenThemeExtension.fake();

  const MyoroCheckboxWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroCheckboxWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroCheckboxWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
