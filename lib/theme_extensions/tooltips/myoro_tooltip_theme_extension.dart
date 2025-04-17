import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroTooltip].
final class MyoroTooltipThemeExtension
    extends ThemeExtension<MyoroTooltipThemeExtension> {
  /// [Tooltip.waitDuration].
  final Duration waitDuration;

  /// [Tooltip.margin].
  final EdgeInsets margin;

  const MyoroTooltipThemeExtension({
    required this.waitDuration,
    required this.margin,
  });

  MyoroTooltipThemeExtension.fake()
    : waitDuration = Duration(
        milliseconds: faker.randomGenerator.integer(9999),
      ),
      margin = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50));

  const MyoroTooltipThemeExtension.builder()
    : waitDuration = kMyoroTooltipWaitDuration,
      margin = EdgeInsets.zero;

  @override
  MyoroTooltipThemeExtension copyWith({
    Duration? waitDuration,
    EdgeInsets? margin,
  }) {
    return MyoroTooltipThemeExtension(
      waitDuration: waitDuration ?? this.waitDuration,
      margin: margin ?? this.margin,
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
      margin: EdgeInsets.lerp(margin, other.margin, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTooltipThemeExtension &&
        other.runtimeType == runtimeType &&
        other.waitDuration == waitDuration &&
        other.margin == margin;
  }

  @override
  int get hashCode {
    return Object.hash(waitDuration, margin);
  }

  @override
  String toString() =>
      'MyoroTooltipThemeExtension(\n'
      '  waitDuration: $waitDuration,\n'
      '  margin: $margin,\n'
      ');';
}
