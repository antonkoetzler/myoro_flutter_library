import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_pie_graph_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroPieGraph].
@immutable
@myoroThemeExtension
class MyoroPieGraphThemeExtension extends ThemeExtension<MyoroPieGraphThemeExtension>
    with _$MyoroPieGraphThemeExtensionMixin {
  const MyoroPieGraphThemeExtension({required this.itemColor, required this.itemRadius});

  // coverage:ignore-start
  MyoroPieGraphThemeExtension.fake() : itemColor = myoroFake<Color>(), itemRadius = faker.randomGenerator.decimal();
  // coverage:ignore-end

  MyoroPieGraphThemeExtension.builder(ColorScheme colorScheme) : itemColor = colorScheme.onPrimary, itemRadius = 200;

  /// Default color of an item.
  final Color itemColor;

  /// Default itemRadius (aka height) of an item.
  final double itemRadius;

  @override
  MyoroPieGraphThemeExtension lerp(covariant ThemeExtension<MyoroPieGraphThemeExtension>? other, double t) {
    if (other is! MyoroPieGraphThemeExtension) return this;
    return copyWith(
      itemColor: Color.lerp(itemColor, other.itemColor, t),
      itemRadius: lerpDouble(itemRadius, other.itemRadius, t),
    );
  }
}
