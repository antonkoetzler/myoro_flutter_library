import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_layout_builder_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroLayoutBuilderWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroLayoutBuilderWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>
    with _$MyoroLayoutBuilderWidgetShowcaseThemeExtensionMixin {
  const MyoroLayoutBuilderWidgetShowcaseThemeExtension();

  const MyoroLayoutBuilderWidgetShowcaseThemeExtension.fake();

  const MyoroLayoutBuilderWidgetShowcaseThemeExtension.builder();

  @override
  MyoroLayoutBuilderWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroLayoutBuilderWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
