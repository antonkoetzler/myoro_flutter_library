import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum for various width configuration that
/// may be applied to a [MyoroTableColumn].
///
/// TODO: Needs to be tested.
enum MyoroTableV2ColumnWidthConfigurationEnum {
  /// Fixed: Fixed width.
  fixed,

  /// Intrinsic width: Expands only as much as the [MyoroTableColumn] needs.
  intrinsic,

  /// Expanded: Expands as much as possible.
  expanded;

  factory MyoroTableV2ColumnWidthConfigurationEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isFixed => this == fixed;
  bool get isIntrinsic => this == intrinsic;
  bool get isExpanded => this == expanded;
}
