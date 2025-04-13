import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that builds a [MyoroTableV2Row] to then be rendered.
typedef MyoroTableV2RowBuilder<T> = MyoroTableV2Row<T> Function(T item);

/// Function that gathers the [MyoroTableV2Pagination] of the [MyoroTableV2].
///
/// Passes the [List] of [MyoroFilter]s that was applied to get the previous [MyoroTableV2Pagination].
typedef MyoroTableV2ConfigurationPaginationRequest<T> =
    FutureOr<MyoroTableV2Pagination<T>> Function(Set<MyoroFilter> filters);

/// Configuration model for [MyoroTableV2].
final class MyoroTableV2Configuration<T> extends Equatable {
  static const showPageNumberControlDefaultValue = false;
  static const showItemsPerPageControlDefaultValue = false;

  /// [MyoroTableV2Controller] of the [MyoroTableV2].
  final MyoroTableV2Controller<T>? controller;

  /// Title columns of the table.
  final List<MyoroTableV2Column> titleCells;

  /// Function that builds a [MyoroTableV2Row] to then be rendered.
  final MyoroTableV2RowBuilder<T> rowBuilder;

  /// [MyoroTableV2Pagination] of the [MyoroTableV2].
  final MyoroTableV2ConfigurationPaginationRequest<T> paginationBuilder;

  MyoroTableV2Configuration({
    this.controller,
    required this.titleCells,
    required this.rowBuilder,
    required this.paginationBuilder,
  }) : assert(
         titleCells.isNotEmpty,
         '[MyoroTableV2]: [titleCells] cannot be empty',
       );

  MyoroTableV2Configuration<T> copyWith({
    MyoroTableV2Controller<T>? controller,
    List<MyoroTableV2Column>? titleCells,
    MyoroTableV2RowBuilder<T>? rowBuilder,
    MyoroTableV2ConfigurationPaginationRequest<T>? paginationBuilder,
  }) {
    return MyoroTableV2Configuration(
      controller: controller ?? this.controller,
      titleCells: titleCells ?? this.titleCells,
      rowBuilder: rowBuilder ?? this.rowBuilder,
      paginationBuilder: paginationBuilder ?? this.paginationBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [controller, titleCells, rowBuilder, paginationBuilder];
  }

  @override
  String toString() =>
      'MyoroTableV2Configuration<$T>(\n'
      '  controller: $controller,\n'
      '  titleCells: $titleCells,\n'
      '  rowBuilder: $rowBuilder,\n'
      '  paginationBuilder: $paginationBuilder,\n'
      ');';
}
