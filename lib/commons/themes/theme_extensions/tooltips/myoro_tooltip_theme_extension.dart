import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTooltip].
final class MyoroTooltipThemeExtension
    extends ThemeExtension<MyoroTooltipThemeExtension> {
  /// [Tooltip.waitDuration].
  final Duration waitDuration;

  const MyoroTooltipThemeExtension({
    required this.waitDuration,
  });

  MyoroTooltipThemeExtension.fake()
      : waitDuration =
            Duration(milliseconds: faker.randomGenerator.integer(9999));

  @override
  MyoroTooltipThemeExtension copyWith({
    Duration? waitDuration,
  }) {
    return MyoroTooltipThemeExtension(
      waitDuration: waitDuration ?? this.waitDuration,
    );
  }

  @override
  MyoroTooltipThemeExtension lerp(
    covariant ThemeExtension<MyoroTooltipThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTooltipThemeExtension) return this;
    return copyWith(
      waitDuration: myoroLerp(waitDuration, other.waitDuration, t),
    );
  }
}
