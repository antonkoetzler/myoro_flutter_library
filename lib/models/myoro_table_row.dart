import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing a (non-title) row of a [MyoroTable].
final class MyoroTableRow extends Equatable {
  /// Function executed when the row is pressed.
  final VoidCallback? onPressed;

  /// [MyoroTableCell]s of the row.
  final List<MyoroTableCell> cells;

  const MyoroTableRow({this.onPressed, required this.cells});

  factory MyoroTableRow.fake({required int columnQuantity}) {
    return MyoroTableRow(
      onPressed: null,
      cells: List.generate(columnQuantity, (_) => MyoroTableCell.fake()),
    );
  }

  MyoroTableRow copyWith({
    VoidCallback? onPressed,
    List<MyoroTableCell>? cells,
  }) {
    return MyoroTableRow(
      onPressed: onPressed ?? this.onPressed,
      cells: cells ?? this.cells,
    );
  }

  @override
  String toString() =>
      ''
      'MyoroTableRow(\n'
      '  onPressed: $onPressed,\n'
      '  cells: $cells,\n'
      ');';

  @override
  List<Object?> get props {
    return [onPressed, cells];
  }
}
