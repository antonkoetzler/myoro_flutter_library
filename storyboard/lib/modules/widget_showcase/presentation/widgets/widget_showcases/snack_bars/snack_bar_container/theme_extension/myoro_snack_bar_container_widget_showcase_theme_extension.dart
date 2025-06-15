import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_container_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSnackBarContainerWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroSnackBarContainerWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroSnackBarContainerWidgetShowcaseThemeExtension>
    with _$MyoroSnackBarContainerWidgetShowcaseThemeExtensionMixin {
  const MyoroSnackBarContainerWidgetShowcaseThemeExtension();

  const MyoroSnackBarContainerWidgetShowcaseThemeExtension.builder();

  const MyoroSnackBarContainerWidgetShowcaseThemeExtension.fake();

  @override
  MyoroSnackBarContainerWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarContainerWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
