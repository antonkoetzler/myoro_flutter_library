import 'package:faker/faker.dart' hide Color;
import 'package:flutter/widgets.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_row.g.dart';

/// Non-title row of a [MyoroTable].
@immutable
@myoroModel
class MyoroTableRow<T> with _$MyoroTableRowMixin<T> {
  const MyoroTableRow({this.onTapDown, this.onTapUp, required this.cells});

  MyoroTableRow.fake({int? cellQuantity})
    : onTapDown = faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp = faker.randomGenerator.boolean() ? ((_) {}) : null,
      cells = List.generate(cellQuantity ?? faker.randomGenerator.integer(10), (int index) => Text('Cell #$index'));

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
