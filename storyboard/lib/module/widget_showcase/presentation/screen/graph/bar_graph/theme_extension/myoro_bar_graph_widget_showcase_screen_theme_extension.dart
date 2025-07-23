import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_bar_graph_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroBarGraphWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroBarGraphWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroBarGraphWidgetShowcaseScreenThemeExtension>
    with _$MyoroBarGraphWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroBarGraphWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroBarGraphWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroBarGraphWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroBarGraphWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroBarGraphWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
