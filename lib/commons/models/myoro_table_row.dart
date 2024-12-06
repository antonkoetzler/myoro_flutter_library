import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration options for a row in a [MyoroTable].
final class MyoroTableRow extends Equatable {
  /// Cells of a row.
  final List<MyoroTableCell> cells;

  /// Function executed when the row is pressed.
  final VoidCallback? onPressed;

  const MyoroTableRow({
    required this.cells,
    this.onPressed,
  });

  MyoroTableRow copyWith({
    List<MyoroTableCell>? cells,
    VoidCallback? onPressed,
  }) {
    return MyoroTableRow(
      cells: cells ?? this.cells,
      onPressed: onPressed ?? this.onPressed,
    );
  }

  MyoroTableRow.fake()
      : cells = List.generate(
          faker.randomGenerator.integer(20),
          (_) => MyoroTableCell.fake(),
        ),
        onPressed = null;

  @override
  String toString() => ''
      'MyoroTableRow(\n'
      '  cells: $cells,\n'
      '  onPressed: $onPressed,\n'
      ');';

  @override
  List<Object?> get props => [cells, onPressed];
}
