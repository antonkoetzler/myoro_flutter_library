import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [ColorWidgetShowcaseOption].
@immutable
final class ColorWidgetShowcaseOptionThemeExtension
    extends ThemeExtension<ColorWidgetShowcaseOptionThemeExtension> {
  /// [EdgeInsets] of [_Item].
  final EdgeInsets itemPadding;

  /// [Row.spacing] of [_Item].
  final double itemSpacing;

  /// Size of [_ItemColor].
  final double itemColorSize;

  const ColorWidgetShowcaseOptionThemeExtension({
    required this.itemPadding,
    required this.itemSpacing,
    required this.itemColorSize,
  });

  ColorWidgetShowcaseOptionThemeExtension.fake()
    : itemPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      itemSpacing = faker.randomGenerator.decimal(scale: 50),
      itemColorSize = faker.randomGenerator.decimal(scale: 100);

  const ColorWidgetShowcaseOptionThemeExtension.builder()
    : itemPadding = const EdgeInsets.all(10),
      itemSpacing = 10,
      itemColorSize = 75;

  @override
  ColorWidgetShowcaseOptionThemeExtension copyWith({
    EdgeInsets? itemPadding,
    double? itemSpacing,
    double? itemColorSize,
  }) {
    return ColorWidgetShowcaseOptionThemeExtension(
      itemPadding: itemPadding ?? this.itemPadding,
      itemSpacing: itemSpacing ?? this.itemSpacing,
      itemColorSize: itemColorSize ?? this.itemColorSize,
    );
  }

  @override
  ColorWidgetShowcaseOptionThemeExtension lerp(
    covariant ThemeExtension<ColorWidgetShowcaseOptionThemeExtension>? other,
    double t,
  ) {
    if (other is! ColorWidgetShowcaseOptionThemeExtension) return this;
    return copyWith(
      itemPadding: EdgeInsets.lerp(itemPadding, other.itemPadding, t),
      itemSpacing: lerpDouble(itemSpacing, other.itemSpacing, t),
      itemColorSize: lerpDouble(itemColorSize, other.itemColorSize, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ColorWidgetShowcaseOptionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemPadding == itemPadding &&
        other.itemSpacing == itemSpacing &&
        other.itemColorSize == itemColorSize;
  }

  @override
  int get hashCode {
    return Object.hash(itemPadding, itemSpacing, itemColorSize);
  }

  @override
  String toString() =>
      'ColorWidgetShowcaseOptionThemeExtension(\n'
      '  itemPadding: $itemPadding,\n'
      '  itemSpacing: $itemSpacing,\n'
      '  itemColorSize: $itemColorSize,\n'
      ');';
}
