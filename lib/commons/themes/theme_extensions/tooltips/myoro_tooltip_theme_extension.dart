import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTooltip].
final class MyoroTooltipThemeExtension extends ThemeExtension<MyoroTooltipThemeExtension> {
  /// [Tooltip.waitDuration].
  final Duration waitDuration;

  const MyoroTooltipThemeExtension({
    required this.waitDuration,
  });

  @override
  MyoroTooltipThemeExtension copyWith({
    Duration? waitDuration,
  }) {
    return MyoroTooltipThemeExtension(
      waitDuration: waitDuration ?? this.waitDuration,
    );
  }

  @override
  ThemeExtension<MyoroTooltipThemeExtension> lerp(
    covariant ThemeExtension<MyoroTooltipThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroTooltipThemeExtension) return this;
    return copyWith(
      waitDuration: myoroLerp(waitDuration, other.waitDuration, t),
    );
  }
}
