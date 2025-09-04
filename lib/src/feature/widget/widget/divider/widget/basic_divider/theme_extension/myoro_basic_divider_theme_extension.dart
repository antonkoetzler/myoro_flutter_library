import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroBasicDivider].
@immutable
@myoroThemeExtension
class MyoroBasicDividerThemeExtension extends ThemeExtension<MyoroBasicDividerThemeExtension>
    with _$MyoroBasicDividerThemeExtensionMixin {
  const MyoroBasicDividerThemeExtension({required this.color, required this.shortValue, required this.longValue});

  MyoroBasicDividerThemeExtension.builder(ColorScheme colorScheme)
    : color = colorScheme.onPrimary,
      shortValue = kMyoroBorderWidth,
      longValue = double.infinity;

  // coverage:ignore-start
  MyoroBasicDividerThemeExtension.fake()
    : color = myoroFake<Color>(),
      shortValue = faker.randomGenerator.decimal(),
      longValue = faker.randomGenerator.decimal();
  // coverage:ignore-end

  @override
  MyoroBasicDividerThemeExtension lerp(covariant ThemeExtension<MyoroBasicDividerThemeExtension>? other, double t) {
    if (other is! MyoroBasicDividerThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      shortValue: lerpDouble(shortValue, other.shortValue, t),
      longValue: lerpDouble(longValue, other.longValue, t),
    );
  }

  /// [Color] of the [MyoroBasicDivider].
  final Color color;

  /// Width of the divider. [kMyoroBorderWidth] by default.
  final double shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double longValue;
}
