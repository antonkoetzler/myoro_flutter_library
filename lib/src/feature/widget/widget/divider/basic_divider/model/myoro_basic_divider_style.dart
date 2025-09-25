import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_basic_divider_style.g.dart';

/// Style model of [MyoroBasicDivider].
@immutable
@myoroModel
class MyoroBasicDividerStyle with _$MyoroBasicDividerStyleMixin {
  const MyoroBasicDividerStyle({this.color, this.shortValue, this.longValue});

  // coverage:ignore-start
  factory MyoroBasicDividerStyle.fake() {
    return MyoroBasicDividerStyle(
      color: myoroFake<Color>(),
      shortValue: faker.randomGenerator.decimal(),
      longValue: faker.randomGenerator.decimal(),
    );
  }
  // coverage:ignore-end

  /// [Color] of the [MyoroDivider].
  final Color? color;

  /// Width of the divider. [kMyoroBorderWidth] by default.
  final double? shortValue;

  /// Height of the divider. [double.infinity] by default.
  final double? longValue;
}
