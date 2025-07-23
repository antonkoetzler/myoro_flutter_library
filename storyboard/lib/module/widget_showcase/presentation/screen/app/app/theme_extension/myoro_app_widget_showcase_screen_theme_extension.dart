import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_app_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAppWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroAppWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroAppWidgetShowcaseScreenThemeExtension>
    with _$MyoroAppWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroAppWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroAppWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroAppWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroAppWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroAppWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
