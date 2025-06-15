import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_button_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButtonWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroButtonWidgetShowcaseThemeExtension extends ThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>
    with _$MyoroButtonWidgetShowcaseThemeExtensionMixin {
  const MyoroButtonWidgetShowcaseThemeExtension();

  const MyoroButtonWidgetShowcaseThemeExtension.fake();

  const MyoroButtonWidgetShowcaseThemeExtension.builder();

  @override
  MyoroButtonWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
