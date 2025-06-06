import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'constraints_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [ConstraintsWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class ConstraintsWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ConstraintsWidgetShowcaseOptionThemeExtension>
    with $ConstraintsWidgetShowcaseOptionThemeExtensionMixin {
  const ConstraintsWidgetShowcaseOptionThemeExtension();

  const ConstraintsWidgetShowcaseOptionThemeExtension.fake();

  const ConstraintsWidgetShowcaseOptionThemeExtension.builder();

  @override
  ConstraintsWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ConstraintsWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
