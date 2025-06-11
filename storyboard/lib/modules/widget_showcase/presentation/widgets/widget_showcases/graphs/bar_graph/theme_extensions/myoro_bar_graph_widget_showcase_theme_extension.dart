import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_bar_graph_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroBarGraphWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroBarGraphWidgetShowcaseThemeExtension extends ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension>
    with _$MyoroBarGraphWidgetShowcaseThemeExtensionMixin {
  const MyoroBarGraphWidgetShowcaseThemeExtension();

  const MyoroBarGraphWidgetShowcaseThemeExtension.fake();

  const MyoroBarGraphWidgetShowcaseThemeExtension.builder();

  @override
  MyoroBarGraphWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroBarGraphWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
