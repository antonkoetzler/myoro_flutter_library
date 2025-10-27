import 'package:flutter/material.dart';

import '../enum/myoro_table_column_width_configuration_enum.dart';
import 'myoro_table_column_width_configuration.dart';

/// Model of a column of a [MyoroTable].
@immutable
class MyoroTableColumn {
  /// Creates a new instance of [MyoroTableColumn].
  const MyoroTableColumn({
    this.tooltipMessage,
    this.widthConfiguration = const MyoroTableColumnWidthConfiguration(
      typeEnum: MyoroTableColumnWidthConfigurationEnum.intrinsic,
    ),
    required this.child,
  });

  /// [MyoroTooltip.text]
  final String? tooltipMessage;

  /// Width configuration of the [MyoroTableColumn].
  final MyoroTableColumnWidthConfiguration widthConfiguration;

  /// [Widget] of the column.
  final Widget child;
}
