import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing a (non-title) row of a [MyoroTable].
final class MyoroTableRow extends Equatable {
  /// [MyoroTableCell]s of the row.
  final List<MyoroTableCell> cells;

  const MyoroTableRow({
    required this.cells,
  });

  factory MyoroTableRow.fake({required int columnQuantity}) {
    return MyoroTableRow(
      cells: List.generate(
        columnQuantity,
        (_) => MyoroTableCell.fake(),
      ),
    );
  }

  MyoroTableRow copyWith({
    List<MyoroTableCell>? cells,
  }) {
    return MyoroTableRow(
      cells: cells ?? this.cells,
    );
  }

  @override
  String toString() => ''
      'MyoroTableRow(\n'
      '  cells: $cells,\n'
      ');';

  @override
  List<Object?> get props => [cells];
}
