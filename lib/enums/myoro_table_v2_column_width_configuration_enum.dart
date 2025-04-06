import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating available width configuration
/// for a [MyoroTableV2ColumnWidthConfiguration]
enum MyoroTableV2ColumnWidthConfigurationEnum {
  /// Fixed width: Width never changes.
  fixed,

  /// Intrinsic: Width expands only as much as the
  /// [MyoroTableV2ColumnWidthConfiguration] needs.
  intrinsic,

  /// Expanded: Width expands as much as possible.
  expanded;

  factory MyoroTableV2ColumnWidthConfigurationEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isFixed => this == fixed;
  bool get isIntrinsic => this == intrinsic;
  bool get isExpanded => this == expanded;
}
