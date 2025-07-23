import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_app_bar_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAppBarWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroAppBarWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroAppBarWidgetShowcaseScreenThemeExtension>
    with _$MyoroAppBarWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroAppBarWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroAppBarWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroAppBarWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroAppBarWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroAppBarWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
