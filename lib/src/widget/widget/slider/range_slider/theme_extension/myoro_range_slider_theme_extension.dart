import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_range_slider_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroRangeSlider].
@immutable
@myoroThemeExtension
final class MyoroRangeSliderThemeExtension extends ThemeExtension<MyoroRangeSliderThemeExtension>
    with _$MyoroRangeSliderThemeExtensionMixin {
  const MyoroRangeSliderThemeExtension();

  // coverage:ignore-start
  const MyoroRangeSliderThemeExtension.fake();
  // coverage:ignore-end

  const MyoroRangeSliderThemeExtension.builder();

  @override
  MyoroRangeSliderThemeExtension lerp(covariant ThemeExtension<MyoroRangeSliderThemeExtension>? other, double t) {
    if (other is! MyoroRangeSliderThemeExtension) return this;
    return copyWith();
  }
}
