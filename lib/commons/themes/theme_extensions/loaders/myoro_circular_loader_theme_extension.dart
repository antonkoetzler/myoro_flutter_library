import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroCircularLoader].
final class MyoroCircularLoaderThemeExtension extends ThemeExtension<MyoroCircularLoaderThemeExtension> {
  /// Color of the [MyoroCircularLoader].
  final Color color;

  /// Default size of the [MyoroCircularLoader].
  final double size;

  const MyoroCircularLoaderThemeExtension({
    required this.color,
    required this.size,
  });

  @override
  MyoroCircularLoaderThemeExtension copyWith({
    Color? color,
    double? size,
  }) {
    return MyoroCircularLoaderThemeExtension(
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }

  @override
  ThemeExtension<MyoroCircularLoaderThemeExtension> lerp(
    covariant ThemeExtension<MyoroCircularLoaderThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroCircularLoaderThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      size: lerpDouble(size, other.size, t),
    );
  }
}
