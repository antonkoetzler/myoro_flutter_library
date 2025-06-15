import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdownWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroDropdownWidgetShowcaseThemeExtension extends ThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>
    with _$MyoroDropdownWidgetShowcaseThemeExtensionMixin {
  const MyoroDropdownWidgetShowcaseThemeExtension();

  const MyoroDropdownWidgetShowcaseThemeExtension.fake();

  const MyoroDropdownWidgetShowcaseThemeExtension.builder();

  @override
  MyoroDropdownWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
