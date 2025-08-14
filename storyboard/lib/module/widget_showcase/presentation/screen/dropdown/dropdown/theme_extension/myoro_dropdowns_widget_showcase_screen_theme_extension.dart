import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dropdowns_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDropdownsWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroDropdownsWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroDropdownsWidgetShowcaseScreenThemeExtension>
    with _$MyoroDropdownsWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroDropdownsWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroDropdownsWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroDropdownsWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroDropdownsWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroDropdownsWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
