import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration options for a row in a [MyoroTable].
final class MyoroTableRow<T> extends Equatable {
  /// Item loaded. Used to be able to utilize Equatable.
  final T item;

  /// Cells of a row.
  final List<MyoroTableCell> cells;

  /// Function executed when the row is pressed.
  final VoidCallback? onPressed;

  const MyoroTableRow({
    required this.item,
    required this.cells,
    this.onPressed,
  });

  MyoroTableRow<T> copyWith({
    T? item,
    List<MyoroTableCell>? cells,
    VoidCallback? onPressed,
  }) {
    return MyoroTableRow(
      item: item ?? this.item,
      cells: cells ?? this.cells,
      onPressed: onPressed ?? this.onPressed,
    );
  }

  MyoroTableRow.fake(this.item)
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
  List<Object?> get props => [item];
}
