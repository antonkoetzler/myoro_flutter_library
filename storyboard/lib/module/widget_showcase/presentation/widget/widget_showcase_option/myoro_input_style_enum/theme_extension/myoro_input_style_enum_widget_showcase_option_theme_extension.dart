import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_input_style_enum_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroInputStyleEnumWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension>
    with _$MyoroInputStyleEnumWidgetShowcaseOptionThemeExtensionMixin {
  const MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension();

  const MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension.fake();

  const MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension.builder();

  @override
  MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroInputStyleEnumWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
