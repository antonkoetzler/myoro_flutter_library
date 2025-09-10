import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCircularLoader].
@immutable
@myoroThemeExtension
class MyoroCircularLoaderThemeExtension extends ThemeExtension<MyoroCircularLoaderThemeExtension>
    with _$MyoroCircularLoaderThemeExtensionMixin {
  const MyoroCircularLoaderThemeExtension({this.color, this.size});

  // coverage:ignore-start
  MyoroCircularLoaderThemeExtension.fake()
    : color = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  MyoroCircularLoaderThemeExtension.builder(ColorScheme colorScheme) : color = colorScheme.onPrimary, size = 25;

  /// Color of the [MyoroCircularLoader].
  final Color? color;

  /// Default size of the [MyoroCircularLoader].
  final double? size;

  @override
  MyoroCircularLoaderThemeExtension lerp(covariant ThemeExtension<MyoroCircularLoaderThemeExtension>? other, double t) {
    if (other is! MyoroCircularLoaderThemeExtension) return this;

    final color = Color.lerp(this.color, other.color, t);
    final size = lerpDouble(this.size, other.size, t);

    return copyWith(color: color, colorProvided: color != null, size: size, sizeProvided: size != null);
  }
}
