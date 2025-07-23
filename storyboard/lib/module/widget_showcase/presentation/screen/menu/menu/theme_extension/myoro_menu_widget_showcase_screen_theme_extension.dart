import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menu_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroMenuWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroMenuWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroMenuWidgetShowcaseScreenThemeExtension>
    with _$MyoroMenuWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroMenuWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroMenuWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroMenuWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroMenuWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
