import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroTablePagination] request.
typedef MyoroTableConfigurationPaginationRequest<T> = FutureOr<MyoroTablePagination<T>> Function();

/// Builder of the cells of a row.
typedef MyoroTableConfigurationRowBuilder<T> = List<Widget> Function(T item);

/// Configuration model of [MyoroTable].
///
/// TODO: Needs to be tested.
@immutable
class MyoroTableConfiguration<T> extends Equatable {
  /// [MyoroTablePagination] request.
  final MyoroTableConfigurationPaginationRequest<T> paginationRequest;

  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  /// Builder of the cells of the row.
  final MyoroTableConfigurationRowBuilder<T> rowBuilder;

  const MyoroTableConfiguration({
    required this.paginationRequest,
    required this.columns,
    required this.rowBuilder,
  }) : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  MyoroTableConfiguration<T> copyWith({
    MyoroTableConfigurationPaginationRequest<T>? paginationRequest,
    List<MyoroTableColumn>? columns,
    MyoroTableConfigurationRowBuilder<T>? rowBuilder,
  }) {
    return MyoroTableConfiguration(
      paginationRequest: paginationRequest ?? this.paginationRequest,
      columns: columns ?? this.columns,
      rowBuilder: rowBuilder ?? this.rowBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [paginationRequest, columns, rowBuilder];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  paginationRequest: $paginationRequest,\n'
      '  columns: $columns,\n'
      '  rowBuilder: $rowBuilder,\n'
      ');';
}
