import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCircularLoader].
@immutable
@myoroThemeExtension
final class MyoroCircularLoaderThemeExtension extends ThemeExtension<MyoroCircularLoaderThemeExtension>
    with _$MyoroCircularLoaderThemeExtensionMixin {
  /// Color of the [MyoroCircularLoader].
  final Color color;

  /// Default size of the [MyoroCircularLoader].
  final double size;

  const MyoroCircularLoaderThemeExtension({required this.color, required this.size});

  MyoroCircularLoaderThemeExtension.fake() : color = myoroFake<Color>(), size = faker.randomGenerator.decimal();

  MyoroCircularLoaderThemeExtension.builder(ColorScheme colorScheme) : color = colorScheme.onPrimary, size = 25;

  @override
  MyoroCircularLoaderThemeExtension lerp(covariant ThemeExtension<MyoroCircularLoaderThemeExtension>? other, double t) {
    if (other is! MyoroCircularLoaderThemeExtension) return this;
    return copyWith(color: Color.lerp(color, other.color, t), size: lerpDouble(size, other.size, t));
  }
}
