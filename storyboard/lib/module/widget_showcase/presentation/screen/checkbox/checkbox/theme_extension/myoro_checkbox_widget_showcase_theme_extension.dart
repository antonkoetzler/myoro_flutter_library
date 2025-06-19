import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_checkbox_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroCheckboxWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroCheckboxWidgetShowcaseThemeExtension extends ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>
    with _$MyoroCheckboxWidgetShowcaseThemeExtensionMixin {
  const MyoroCheckboxWidgetShowcaseThemeExtension();

  const MyoroCheckboxWidgetShowcaseThemeExtension.fake();

  const MyoroCheckboxWidgetShowcaseThemeExtension.builder();

  @override
  MyoroCheckboxWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroCheckboxWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
