import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Tap event of a [MyoroTableRow].
///
/// [item] corresponds to the [T] that was used to construct the given [MyoroTableRow].
typedef MyoroTableRowTapEvent<T> = void Function(T item);

/// Non-title row of a [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTableRow<T> extends Equatable {
  /// Function executed when the [MyoroTableRow] is tapped.
  final MyoroTableRowTapEvent<T>? onTapDown;

  /// Function executed when the [MyoroTableRow] is tap then released.
  final MyoroTableRowTapEvent<T>? onTapUp;

  /// Cells of the [MyoroTableRow].
  ///
  /// Number of [Widget]s in [cells] must be equal to the length of
  /// [MyoroTableConfiguration.columns] of the respective [MyoroTable].
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
  List<Object?> get props {
    return [onTapDown, onTapUp, cells];
  }

  @override
  String toString() =>
      'MyoroTableRow(\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      '  cells: $cells,\n'
      ');';
}
