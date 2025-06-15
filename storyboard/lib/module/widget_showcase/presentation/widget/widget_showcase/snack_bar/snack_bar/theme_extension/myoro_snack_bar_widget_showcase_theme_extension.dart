import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSnackBarWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroSnackBarWidgetShowcaseThemeExtension extends ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>
    with _$MyoroSnackBarWidgetShowcaseThemeExtensionMixin {
  const MyoroSnackBarWidgetShowcaseThemeExtension();

  const MyoroSnackBarWidgetShowcaseThemeExtension.fake();

  const MyoroSnackBarWidgetShowcaseThemeExtension.builder();

  @override
  MyoroSnackBarWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
