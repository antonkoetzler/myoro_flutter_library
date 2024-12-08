import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] of [MyoroPieGraph].
final class MyoroPieGraphThemeExtension extends ThemeExtension<MyoroPieGraphThemeExtension> {
  /// Default color of an item.
  final Color itemColor;

  /// Default itemRadius (aka height) of an item.
  final double itemRadius;

  const MyoroPieGraphThemeExtension({
    required this.itemColor,
    required this.itemRadius,
  });

  @override
  MyoroPieGraphThemeExtension copyWith({
    Color? itemColor,
    double? itemRadius,
  }) {
    return MyoroPieGraphThemeExtension(
      itemColor: itemColor ?? this.itemColor,
      itemRadius: itemRadius ?? this.itemRadius,
    );
  }

  @override
  ThemeExtension<MyoroPieGraphThemeExtension> lerp(
    covariant ThemeExtension<MyoroPieGraphThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroPieGraphThemeExtension) return this;
    return copyWith(
      itemColor: Color.lerp(itemColor, other.itemColor, t),
      itemRadius: lerpDouble(itemRadius, other.itemRadius, t),
    );
  }
}
