import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] of [StoryboardColorDropdown].
@immutable
final class StoryboardColorDropdownThemeExtension
    extends ThemeExtension<StoryboardColorDropdownThemeExtension> {
  /// [EdgeInsets] of [_Item].
  final EdgeInsets itemPadding;

  /// [Row.spacing] of [_Item].
  final double itemSpacing;

  /// Size of [_ItemColor].
  final double itemColorSize;

  const StoryboardColorDropdownThemeExtension({
    required this.itemPadding,
    required this.itemSpacing,
    required this.itemColorSize,
  });

  StoryboardColorDropdownThemeExtension.fake()
    : itemPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      itemSpacing = faker.randomGenerator.decimal(scale: 50),
      itemColorSize = faker.randomGenerator.decimal(scale: 100);

  const StoryboardColorDropdownThemeExtension.builder()
    : itemPadding = const EdgeInsets.all(10),
      itemSpacing = 10,
      itemColorSize = 75;

  @override
  StoryboardColorDropdownThemeExtension copyWith({
    EdgeInsets? itemPadding,
    double? itemSpacing,
    double? itemColorSize,
  }) {
    return StoryboardColorDropdownThemeExtension(
      itemPadding: itemPadding ?? this.itemPadding,
      itemSpacing: itemSpacing ?? this.itemSpacing,
      itemColorSize: itemColorSize ?? this.itemColorSize,
    );
  }

  @override
  StoryboardColorDropdownThemeExtension lerp(
    covariant ThemeExtension<StoryboardColorDropdownThemeExtension>? other,
    double t,
  ) {
    if (other is! StoryboardColorDropdownThemeExtension) return this;
    return copyWith(
      itemPadding: EdgeInsets.lerp(itemPadding, other.itemPadding, t),
      itemSpacing: lerpDouble(itemSpacing, other.itemSpacing, t),
      itemColorSize: lerpDouble(itemColorSize, other.itemColorSize, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is StoryboardColorDropdownThemeExtension &&
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
      'StoryboardColorDropdownThemeExtension(\n'
      '  itemPadding: $itemPadding,\n'
      '  itemSpacing: $itemSpacing,\n'
      '  itemColorSize: $itemColorSize,\n'
      ');';
}
