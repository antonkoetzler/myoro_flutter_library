import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdown_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdownWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroDropdownWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroDropdownWidgetShowcaseScreenThemeExtension>
    with _$MyoroDropdownWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroDropdownWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroDropdownWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroDropdownWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroDropdownWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
