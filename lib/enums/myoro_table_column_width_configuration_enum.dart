import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum encapsulating available width configuration
/// for a [MyoroTableColumnWidthConfiguration]
enum MyoroTableColumnWidthConfigurationEnum {
  /// Fixed width: Width never changes.
  fixed,

  /// Intrinsic: Width expands only as much as the
  /// [MyoroTableColumnWidthConfiguration] needs.
  intrinsic,

  /// Expanded: Width expands as much as possible.
  expanded;

  factory MyoroTableColumnWidthConfigurationEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isFixed => this == fixed;
  bool get isIntrinsic => this == intrinsic;
  bool get isExpanded => this == expanded;
}
