import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that is executed when a [MyoroTableRow] is interacted with.
typedef MyoroTableRowTapEvent<T> = void Function(BuildContext context, T item);

/// A row within a [MyoroTable].
class MyoroTableRow<T> extends Equatable {
  /// Function that is executed when a tap is received.
  final MyoroTableRowTapEvent<T>? onTapDown;

  /// Function that is executed when a tap is released.
  final MyoroTableRowTapEvent<T>? onTapUp;

  /// Cell [Widget]s of the row. Must be equal to the length of [MyoroTableConfiguration.titleCells].
  final List<Widget> cells;

  const MyoroTableRow({this.onTapDown, this.onTapUp, required this.cells});

  MyoroTableRow<T> copyWith({
    MyoroTableRowTapEvent<T>? onTapDown,
    bool onTapDownProvided = true,
    MyoroTableRowTapEvent<T>? onTapUp,
    bool onTapUpProvided = true,
    List<Widget>? cells,
  }) {
    return MyoroTableRow(
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
      cells: cells ?? this.cells,
    );
  }

  @override
  String toString() =>
      'MyoroTableRow<$T>(\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      '  cells: $cells,\n'
      ');';

  @override
  List<Object?> get props {
    return [onTapDown, onTapUp, cells];
  }
}
