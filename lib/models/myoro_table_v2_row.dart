import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when a [MyoroTableV2Row] is interacted with.
typedef MyoroTableV2RowTapEvent<T> =
    void Function(BuildContext context, T item);

/// A row within a [MyoroTableV2].
final class MyoroTableV2Row<T> extends Equatable {
  /// Function that is executed when a tap is received.
  final MyoroTableV2RowTapEvent<T>? onTapDown;

  /// Function that is executed when a tap is released.
  final MyoroTableV2RowTapEvent<T>? onTapUp;

  /// Cell [Widget]s of the row. Must be equal to the length of [MyoroTableV2Configuration.titleCells].
  final List<Widget> cells;

  const MyoroTableV2Row({this.onTapDown, this.onTapUp, required this.cells});

  MyoroTableV2Row<T> copyWith({
    MyoroTableV2RowTapEvent<T>? onTapDown,
    MyoroTableV2RowTapEvent<T>? onTapUp,
    List<Widget>? cells,
  }) {
    return MyoroTableV2Row(
      onTapDown: onTapDown ?? this.onTapDown,
      onTapUp: onTapUp ?? this.onTapUp,
      cells: cells ?? this.cells,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2Row<$T>(\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      '  cells: $cells,\n'
      ');';

  @override
  List<Object?> get props {
    return [onTapDown, onTapUp, cells];
  }
}
