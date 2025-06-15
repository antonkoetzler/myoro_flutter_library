import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_type_widget_showcase_option_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSnackBarTypeWidgetShowcaseOption].
@immutable
@myoroThemeExtension
final class MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension>
    with _$MyoroSnackBarTypeWidgetShowcaseOptionThemeExtensionMixin {
  const MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension();

  const MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension.fake();

  const MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension.builder();

  @override
  MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarTypeWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
