import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to store the different types of width configurations
/// available for a column within a [MyoroTable].
enum MyoroTableColumnWidthEnum {
  /// Uses up as much width as possible.
  expanding,

  /// Uses up as much width as the [MyoroTableColumn]'s [Widget] needs.
  intrinsic,

  /// A fixed width.
  fixed;

  factory MyoroTableColumnWidthEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isExpanding => this == expanding;
  bool get isIntrinsic => this == intrinsic;
  bool get isFixed => this == fixed;
}
