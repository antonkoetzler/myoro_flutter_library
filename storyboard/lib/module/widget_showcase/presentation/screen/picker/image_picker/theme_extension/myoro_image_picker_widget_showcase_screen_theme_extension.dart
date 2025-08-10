import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_image_picker_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroImagePickerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroImagePickerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroImagePickerWidgetShowcaseScreenThemeExtension>
    with _$MyoroImagePickerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroImagePickerWidgetShowcaseScreenThemeExtension();

  const MyoroImagePickerWidgetShowcaseScreenThemeExtension.fake();

  const MyoroImagePickerWidgetShowcaseScreenThemeExtension.builder();

  @override
  MyoroImagePickerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroImagePickerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
