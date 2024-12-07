import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroCarousel].
final class MyoroCarouselThemeExtension extends ThemeExtension<MyoroCarouselThemeExtension> {
  const MyoroCarouselThemeExtension();

  @override
  MyoroCarouselThemeExtension copyWith() => this;

  @override
  ThemeExtension<MyoroCarouselThemeExtension> lerp(
    covariant ThemeExtension<MyoroCarouselThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
