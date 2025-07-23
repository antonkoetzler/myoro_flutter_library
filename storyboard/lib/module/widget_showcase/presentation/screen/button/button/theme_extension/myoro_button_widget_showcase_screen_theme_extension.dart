import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_button_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroButtonWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroButtonWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroButtonWidgetShowcaseScreenThemeExtension>
    with _$MyoroButtonWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroButtonWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroButtonWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroButtonWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroButtonWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroButtonWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
