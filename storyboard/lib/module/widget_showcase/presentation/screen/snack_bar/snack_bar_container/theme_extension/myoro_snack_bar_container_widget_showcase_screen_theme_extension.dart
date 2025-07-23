import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_snack_bar_container_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroSnackBarContainerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension>
    with _$MyoroSnackBarContainerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension();

  // coverage:ignore-start
  const MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension.fake();
  // coverage:ignore-end

  const MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroSnackBarContainerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
