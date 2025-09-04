import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_style.g.dart';

/// Style model of [MyoroResizeDivider].
@immutable
@myoroModel
class MyoroResizeDividerStyle extends MyoroBasicDividerStyle with _$MyoroResizeDividerStyleMixin {
  const MyoroResizeDividerStyle({super.color, super.shortValue, super.longValue});

  // coverage:ignore-start
  factory MyoroResizeDividerStyle.fake() {
    return MyoroResizeDividerStyle(
      color: faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      shortValue: faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: kMyoroMultiplier * 4)
          : null,
      longValue: faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: kMyoroMultiplier * 4)
          : null,
    );
  }
  // coverage:ignore-end

  /// Copy with.
  @override
  MyoroResizeDividerStyle copyWith({
    Color? color,
    bool colorProvided = true,
    double? shortValue,
    bool shortValueProvided = true,
    double? longValue,
    bool longValueProvided = true,
  }) {
    return MyoroResizeDividerStyle(
      color: colorProvided ? (color ?? this.color) : null,
      shortValue: shortValueProvided ? (shortValue ?? this.shortValue) : null,
      longValue: longValueProvided ? (longValue ?? this.longValue) : null,
    );
  }
}
