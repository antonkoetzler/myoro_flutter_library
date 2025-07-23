import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum of [MyoroTableColumnWidthConfiguration].
enum MyoroTableColumnWidthConfigurationEnum {
  /// Expand as much as possible.
  expanded,

  /// Expand only as much as the [MyoroTableColumn] needs.
  intrinsic,

  /// Fixed width.
  fixed;

  // coverage:ignore-start
  factory MyoroTableColumnWidthConfigurationEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  bool get isExpanded => (this == expanded);
  bool get isIntrinsic => (this == intrinsic);
  bool get isFixed => (this == fixed);
}
