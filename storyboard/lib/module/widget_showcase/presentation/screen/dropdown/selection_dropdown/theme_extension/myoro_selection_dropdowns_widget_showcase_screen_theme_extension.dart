import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_selection_dropdowns_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSelectionDropdownsWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension>
    with _$MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSelectionDropdownsWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
