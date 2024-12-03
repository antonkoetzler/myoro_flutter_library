import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model to store the configuration options for a row in a [MyoroTable].
final class MyoroTableRow extends Equatable {
  /// Cells of a row.
  final List<MyoroTableCell> cells;

  const MyoroTableRow({
    required this.cells,
  });

  MyoroTableRow copyWith({
    List<MyoroTableCell>? cells,
  }) {
    return MyoroTableRow(
      cells: cells ?? this.cells,
    );
  }

  MyoroTableRow.fake()
      : cells = List.generate(
          faker.randomGenerator.integer(20),
          (_) => MyoroTableCell.fake(),
        );

  @override
  String toString() => ''
      'MyoroTableRow(\n'
      '  cells: $cells,\n'
      ');';

  @override
  List<Object?> get props => [cells];
}