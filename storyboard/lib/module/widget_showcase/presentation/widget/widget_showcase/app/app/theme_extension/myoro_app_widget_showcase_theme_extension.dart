import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_app_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAppWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroAppWidgetShowcaseThemeExtension extends ThemeExtension<MyoroAppWidgetShowcaseThemeExtension>
    with _$MyoroAppWidgetShowcaseThemeExtensionMixin {
  const MyoroAppWidgetShowcaseThemeExtension();

  const MyoroAppWidgetShowcaseThemeExtension.fake();

  const MyoroAppWidgetShowcaseThemeExtension.builder();

  @override
  MyoroAppWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroAppWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
