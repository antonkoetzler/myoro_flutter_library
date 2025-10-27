import 'package:flutter/material.dart';

import '../enum/myoro_table_column_width_configuration_enum.dart';

/// Width configuration of a [MyoroTable].
@immutable
class MyoroTableColumnWidthConfiguration {
  const MyoroTableColumnWidthConfiguration({required this.typeEnum, this.fixedWidth})
    : assert(
        (typeEnum == MyoroTableColumnWidthConfigurationEnum.fixed) ? (fixedWidth != null) : (fixedWidth == null),
        '[MyoroTableColumnWidthConfiguration]: If [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed], '
        '[fixedWidth] cannot be null. Vice versa, [fixedWidth] must be null if [typeEnum] is any other value.',
      );

  /// Width configuration enum.
  final MyoroTableColumnWidthConfigurationEnum typeEnum;

  /// Fixed width when [typeEnum] is [MyoroTableColumnWidthConfigurationEnum.fixed].
  final double? fixedWidth;
}
