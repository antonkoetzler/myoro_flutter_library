import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_style.g.dart';

/// Style model of [MyoroResizeDivider].
@immutable
@myoroModel
class MyoroResizeDividerStyle extends MyoroBasicDividerStyle with _$MyoroResizeDividerStyleMixin {
  const MyoroResizeDividerStyle({
    super.color,
    super.shortValue,
    super.longValue,
    this.resizeButtonColor,
    this.resizeButtonShortValue,
    this.resizeButtonLongValue,
    this.resizeButtonBorderRadius,
  });

  // coverage:ignore-start
  factory MyoroResizeDividerStyle.fake() {
    return MyoroResizeDividerStyle(
      color: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      shortValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: kMyoroMultiplier * 4) : null,
      longValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: kMyoroMultiplier * 4) : null,
      resizeButtonColor: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      resizeButtonShortValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      resizeButtonLongValue: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal() : null,
      resizeButtonBorderRadius: faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
    );
  }
  // coverage:ignore-end

  /// [MyoroColorDesignSystem.resizeButtonColor] by default.
  final Color? resizeButtonColor;

  /// Width of the resize button. 10 by default.
  final double? resizeButtonShortValue;

  /// Height of the resize button. 30 by default.
  final double? resizeButtonLongValue;

  /// Border radius of the resize button. [kMyoroBorderRadius] by default.
  final BorderRadius? resizeButtonBorderRadius;

  /// Copy with.
  @override
  MyoroResizeDividerStyle copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
    Color? resizeButtonColor,
    bool resizeButtonColorProvided = true,
    double? resizeButtonShortValue,
    bool resizeButtonShortValueProvided = true,
    double? resizeButtonLongValue,
    bool resizeButtonLongValueProvided = true,
    BorderRadius? resizeButtonBorderRadius,
    bool resizeButtonBorderRadiusProvided = true,
  }) {
    return MyoroResizeDividerStyle(
      color: colorProvided ? (color ?? this.color) : null,
      shortValue: shortValueProvided ? (shortValue ?? this.shortValue) : null,
      longValue: longValueProvided ? (longValue ?? this.longValue) : null,
      resizeButtonColor: resizeButtonColorProvided ? (resizeButtonColor ?? this.resizeButtonColor) : null,
      resizeButtonShortValue: resizeButtonShortValueProvided
          ? (resizeButtonShortValue ?? this.resizeButtonShortValue)
          : null,
      resizeButtonLongValue: resizeButtonLongValueProvided
          ? (resizeButtonLongValue ?? this.resizeButtonLongValue)
          : null,
      resizeButtonBorderRadius: resizeButtonBorderRadiusProvided
          ? (resizeButtonBorderRadius ?? this.resizeButtonBorderRadius)
          : null,
    );
  }
}
