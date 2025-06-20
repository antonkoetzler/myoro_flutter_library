import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSnackBarWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSnackBarWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSnackBarWidgetShowcaseScreenThemeExtension>
    with _$MyoroSnackBarWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSnackBarWidgetShowcaseScreenThemeExtension();

  const MyoroSnackBarWidgetShowcaseScreenThemeExtension.fake();

  const MyoroSnackBarWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroSnackBarWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
