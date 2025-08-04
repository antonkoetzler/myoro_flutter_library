import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_tab_view_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroTabViewWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroTabViewWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroTabViewWidgetShowcaseScreenThemeExtension>
    with _$MyoroTabViewWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroTabViewWidgetShowcaseScreenThemeExtension();

  const MyoroTabViewWidgetShowcaseScreenThemeExtension.fake();

  const MyoroTabViewWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroTabViewWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroTabViewWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
