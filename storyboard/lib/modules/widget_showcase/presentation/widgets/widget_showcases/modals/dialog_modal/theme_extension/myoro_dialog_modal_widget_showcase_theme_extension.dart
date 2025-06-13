import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_dialog_modal_widget_showcase_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroDialogModalWidgetShowcase].
@immutable
@myoroThemeExtension
final class MyoroDialogModalWidgetShowcaseThemeExtension
    extends ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>
    with _$MyoroDialogModalWidgetShowcaseThemeExtensionMixin {
  const MyoroDialogModalWidgetShowcaseThemeExtension();

  const MyoroDialogModalWidgetShowcaseThemeExtension.fake();

  const MyoroDialogModalWidgetShowcaseThemeExtension.builder();

  @override
  MyoroDialogModalWidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<MyoroDialogModalWidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
