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
    with _$MyoroPieGraphThemeExtensionMixin
    implements MyoroPieGraphStyle {
  const MyoroPieGraphThemeExtension({this.itemColor, this.itemRadius});

  // coverage:ignore-start
  MyoroPieGraphThemeExtension.fake()
    : itemColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemRadius = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null;
  // coverage:ignore-end

  MyoroPieGraphThemeExtension.builder(ColorScheme colorScheme) : itemColor = colorScheme.onPrimary, itemRadius = 200;

  /// Default color of an item.
  @override
  final Color? itemColor;

  /// Default itemRadius (aka height) of an item.
  @override
  final double? itemRadius;

  @override
  MyoroPieGraphThemeExtension lerp(covariant ThemeExtension<MyoroPieGraphThemeExtension>? other, double t) {
    if (other is! MyoroPieGraphThemeExtension) return this;

    final itemColor = Color.lerp(this.itemColor, other.itemColor, t);
    final itemRadius = lerpDouble(this.itemRadius, other.itemRadius, t);

    return copyWith(
      itemColor: itemColor,
      itemColorProvided: itemColor != null,
      itemRadius: itemRadius,
      itemRadiusProvided: itemRadius != null,
    );
  }
}
