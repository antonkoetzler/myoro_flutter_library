import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to distinguish configuration the [MyoroTableColumnWidth] configuration of a [MyoroTableColumn].
enum MyoroTableColumnWidthEnum {
  /// Fixed width.
  fixed,

  /// Stretches the minimum amount that the column needs.
  flexible,

  /// Expands the maximum amount available.
  expanded;

  factory MyoroTableColumnWidthEnum.fake() =>
      values[faker.randomGenerator.integer(values.length)];

  bool get isFixed => this == fixed;
  bool get isFlexible => this == flexible;
  bool get isExpanded => this == expanded;
}
