import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_file_picker_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroFilePickerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroFilePickerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroFilePickerWidgetShowcaseScreenThemeExtension>
    with _$MyoroFilePickerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroFilePickerWidgetShowcaseScreenThemeExtension();

  const MyoroFilePickerWidgetShowcaseScreenThemeExtension.fake();

  const MyoroFilePickerWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroFilePickerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroFilePickerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
