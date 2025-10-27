import 'package:flutter/widgets.dart';

import '../type/myoro_table_types.dart';

/// Non-title row of a [MyoroTable].
@immutable
class MyoroTableRow<T> {
  const MyoroTableRow({this.onTapDown, this.onTapUp, required this.cells});

  /// Function executed when the [MyoroTableRow] is tapped.
  final MyoroTableRowTapEvent<T>? onTapDown;

  /// Function executed when the [MyoroTableRow] is tap then released.
  final MyoroTableRowTapEvent<T>? onTapUp;

  /// Cells of the [MyoroTableRow].
  ///
  /// Number of [Widget]s in [cells] must be equal to the length of
  /// [MyoroTableConfiguration.columns] of the respective [MyoroTable].
  final List<Widget> cells;
}
