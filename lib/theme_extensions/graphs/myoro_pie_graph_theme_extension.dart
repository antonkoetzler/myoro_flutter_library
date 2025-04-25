import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroPieGraph].
class MyoroPieGraphThemeExtension extends ThemeExtension<MyoroPieGraphThemeExtension> {
  /// Default color of an item.
  final Color itemColor;

  /// Default itemRadius (aka height) of an item.
  final double itemRadius;

  const MyoroPieGraphThemeExtension({required this.itemColor, required this.itemRadius});

  MyoroPieGraphThemeExtension.fake()
    : itemColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      itemRadius = faker.randomGenerator.decimal();

  MyoroPieGraphThemeExtension.builder(ColorScheme colorScheme)
    : itemColor = colorScheme.onPrimary,
      itemRadius = 200;

  @override
  MyoroPieGraphThemeExtension copyWith({Color? itemColor, double? itemRadius}) {
    return MyoroPieGraphThemeExtension(
      itemColor: itemColor ?? this.itemColor,
      itemRadius: itemRadius ?? this.itemRadius,
    );
  }

  @override
  MyoroPieGraphThemeExtension lerp(
    covariant ThemeExtension<MyoroPieGraphThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroPieGraphThemeExtension) return this;
    return copyWith(
      itemColor: Color.lerp(itemColor, other.itemColor, t),
      itemRadius: lerpDouble(itemRadius, other.itemRadius, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemColor == itemColor &&
        other.itemRadius == itemRadius;
  }

  @override
  int get hashCode {
    return Object.hash(itemColor, itemRadius);
  }

  @override
  String toString() =>
      'MyoroPieGraphThemeExtension(\n'
      '  itemColor: $itemColor,\n'
      '  itemRadius: $itemRadius,\n'
      ');';
}
