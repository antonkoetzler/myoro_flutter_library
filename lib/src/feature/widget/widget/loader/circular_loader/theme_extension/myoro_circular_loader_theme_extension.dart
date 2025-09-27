
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_circular_loader_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroCircularLoader].
@immutable
@myoroThemeExtension
class MyoroCircularLoaderThemeExtension extends ThemeExtension<MyoroCircularLoaderThemeExtension>
    with _$MyoroCircularLoaderThemeExtensionMixin
    implements MyoroCircularLoaderStyle {
  const MyoroCircularLoaderThemeExtension({this.color, this.size});

  // coverage:ignore-start
  MyoroCircularLoaderThemeExtension.fake()
    : color = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  MyoroCircularLoaderThemeExtension.builder(ColorScheme colorScheme)
    : color = colorScheme.onPrimary,
      size = kMyoroMultiplier * 6.25;

  /// Color of the [MyoroCircularLoader].
  @override
  final Color? color;

  /// Default size of the [MyoroCircularLoader].
  @override
  final double? size;

  @override
  MyoroCircularLoaderThemeExtension lerp(covariant MyoroCircularLoaderThemeExtension? other, double t) {
    if (other is! MyoroCircularLoaderThemeExtension) return this;
    final style = MyoroCircularLoaderStyle.lerp(this, other, t);
    return MyoroCircularLoaderThemeExtension(color: style.color, size: style.size);
  }
}
