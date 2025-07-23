import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_layout_builder_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroLayoutBuilderWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension>
    with _$MyoroLayoutBuilderWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroLayoutBuilderWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
