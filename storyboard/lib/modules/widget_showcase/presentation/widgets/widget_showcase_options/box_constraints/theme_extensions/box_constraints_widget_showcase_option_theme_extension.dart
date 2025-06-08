import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'box_constraints_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [BoxConstraintsWidgetShowcaseOption].
@myoroThemeExtension
final class BoxConstraintsWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension>
    with _$BoxConstraintsWidgetShowcaseOptionThemeExtensionMixin {
  const BoxConstraintsWidgetShowcaseOptionThemeExtension();

  const BoxConstraintsWidgetShowcaseOptionThemeExtension.fake();

  const BoxConstraintsWidgetShowcaseOptionThemeExtension.builder();

  @override
  ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension> lerp(
    covariant ThemeExtension<BoxConstraintsWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
