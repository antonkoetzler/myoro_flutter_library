import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_app_bar_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAppBarWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroAppBarWidgetShowcaseThemeExtension extends ThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>
    with _$MyoroAppBarWidgetShowcaseThemeExtensionMixin {
  const MyoroAppBarWidgetShowcaseThemeExtension();

  const MyoroAppBarWidgetShowcaseThemeExtension.fake();

  const MyoroAppBarWidgetShowcaseThemeExtension.builder();

  @override
  MyoroAppBarWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroAppBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
