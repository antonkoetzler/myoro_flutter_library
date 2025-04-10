import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that builds a [MyoroTableV2Row] to then be rendered.
typedef MyoroTableV2RowBuilder<T> = MyoroTableV2Row<T> Function(T item);

/// Configuration model for [MyoroTableV2].
final class MyoroTableV2Configuration<T> extends Equatable {
  /// [MyoroTableV2Controller] of the [MyoroTableV2].
  final MyoroTableV2Controller<T>? controller;

  /// Title columns of the table.
  final List<MyoroTableV2Column> titleCells;

  /// Function that builds a [MyoroTableV2Row] to then be rendered.
  final MyoroTableV2RowBuilder<T> rowBuilder;

  /// [MyoroDataConfiguration] of the [MyoroTableV2].
  final MyoroDataConfiguration<T> dataConfiguration;

  MyoroTableV2Configuration({
    this.controller,
    required this.titleCells,
    required this.rowBuilder,
    required this.dataConfiguration,
  }) : assert(
         titleCells.isNotEmpty,
         '[MyoroTableV2]: [titleCells] cannot be empty',
       );

  MyoroTableV2Configuration<T> copyWith({
    MyoroTableV2Controller<T>? controller,
    List<MyoroTableV2Column>? titleCells,
    MyoroTableV2RowBuilder<T>? rowBuilder,
    MyoroDataConfiguration<T>? dataConfiguration,
  }) {
    return MyoroTableV2Configuration(
      controller: controller ?? this.controller,
      titleCells: titleCells ?? this.titleCells,
      rowBuilder: rowBuilder ?? this.rowBuilder,
      dataConfiguration: dataConfiguration ?? this.dataConfiguration,
    );
  }

  @override
  List<Object?> get props {
    return [controller, titleCells, rowBuilder, dataConfiguration];
  }

  @override
  String toString() =>
      'MyoroTableV2Configuration<$T>(\n'
      '  controller: $controller,\n'
      '  titleCells: $titleCells,\n'
      '  rowBuilder: $rowBuilder,\n'
      '  dataConfiguration: $dataConfiguration,\n'
      ');';
}
