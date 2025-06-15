import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_group_checkbox_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroGroupCheckboxWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroGroupCheckboxWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroGroupCheckboxWidgetShowcaseThemeExtension>
    with _$MyoroGroupCheckboxWidgetShowcaseThemeExtensionMixin {
  const MyoroGroupCheckboxWidgetShowcaseThemeExtension();

  const MyoroGroupCheckboxWidgetShowcaseThemeExtension.fake();

  const MyoroGroupCheckboxWidgetShowcaseThemeExtension.builder();

  @override
  MyoroGroupCheckboxWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroGroupCheckboxWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
