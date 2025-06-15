import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_menu_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroMenuWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroMenuWidgetShowcaseThemeExtension extends ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>
    with _$MyoroMenuWidgetShowcaseThemeExtensionMixin {
  const MyoroMenuWidgetShowcaseThemeExtension();

  const MyoroMenuWidgetShowcaseThemeExtension.fake();

  const MyoroMenuWidgetShowcaseThemeExtension.builder();

  @override
  MyoroMenuWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroMenuWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
