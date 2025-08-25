import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menus_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroMenusWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroMenusWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroMenusWidgetShowcaseScreenThemeExtension>
    with _$MyoroMenusWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroMenusWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroMenusWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroMenusWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroMenusWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroMenusWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroMenusWidgetShowcaseScreenThemeExtension) return this;
    return copyWith();
  }
}
