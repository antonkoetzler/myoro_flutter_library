import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

part 'myoro_image_picker_widget_showcase_screen_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroImagePickerWidgetShowcaseScreen].
@immutable
@myoroThemeExtension
final class MyoroImagePickerWidgetShowcaseScreenThemeExtension
    extends ThemeExtension<MyoroImagePickerWidgetShowcaseScreenThemeExtension>
    with _$MyoroImagePickerWidgetShowcaseScreenThemeExtensionMixin {
  const MyoroImagePickerWidgetShowcaseScreenThemeExtension({required this.size});

  MyoroImagePickerWidgetShowcaseScreenThemeExtension.fake() : size = myoroFake<Size>();

  const MyoroImagePickerWidgetShowcaseScreenThemeExtension.builder()
    : size = const Size(kMyoroMultiplier * 100, kMyoroMultiplier * 100);

  /// [MyoroImagePickerConfiguration.size]
  final Size size;

  @override
  MyoroImagePickerWidgetShowcaseScreenThemeExtension lerp(
    covariant ThemeExtension<MyoroImagePickerWidgetShowcaseScreenThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroImagePickerWidgetShowcaseScreenThemeExtension) return this;
    return copyWith(size: Size.lerp(size, other.size, t));
  }
}
