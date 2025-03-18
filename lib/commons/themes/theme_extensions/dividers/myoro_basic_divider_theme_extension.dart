import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroBasicDivider].
final class MyoroBasicDividerThemeExtension
    extends ThemeExtension<MyoroBasicDividerThemeExtension> {
  /// [MyoroColorTheme.secondary] by default.
  final Color color;

  /// Width of the divider. 2 by default.
  final double shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double longValue;

  const MyoroBasicDividerThemeExtension({
    required this.color,
    required this.shortValue,
    required this.longValue,
  });

  MyoroBasicDividerThemeExtension.fake()
    : color =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      shortValue = faker.randomGenerator.decimal(),
      longValue = faker.randomGenerator.decimal();

  @override
  MyoroBasicDividerThemeExtension copyWith({
    Color? color,
    double? shortValue,
    double? longValue,
  }) {
    return MyoroBasicDividerThemeExtension(
      color: color ?? this.color,
      shortValue: shortValue ?? this.shortValue,
      longValue: longValue ?? this.longValue,
    );
  }

  @override
  MyoroBasicDividerThemeExtension lerp(
    covariant ThemeExtension<MyoroBasicDividerThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroBasicDividerThemeExtension) return this;
    return copyWith(
      color: Color.lerp(color, other.color, t),
      shortValue: lerpDouble(shortValue, other.shortValue, t),
      longValue: lerpDouble(longValue, other.longValue, t),
    );
  }
}
