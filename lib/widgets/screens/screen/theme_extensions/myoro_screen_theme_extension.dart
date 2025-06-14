import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_screen_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroScreen].
@immutable
@myoroThemeExtension
class MyoroScreenThemeExtension extends ThemeExtension<MyoroScreenThemeExtension>
    with _$MyoroScreenThemeExtensionMixin {
  const MyoroScreenThemeExtension();

  const MyoroScreenThemeExtension.fake();

  const MyoroScreenThemeExtension.builder();

  @override
  ThemeExtension<MyoroScreenThemeExtension> lerp(
    covariant ThemeExtension<MyoroScreenThemeExtension>? other,
    double t,
  ) => this;
}
