import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request of the items of the [MyoroTable].
typedef MyoroTableConfigurationRequest<T> = FutureOr<Set<T>> Function();

/// Builder of the cells of a row.
typedef MyoroTableConfigurationRowBuilder<T> = MyoroTableRow<T> Function(T item);

/// Configuration model of [MyoroTable].
///
/// TODO: Needs to be tested.
@immutable
class MyoroTableConfiguration<T> extends Equatable {
  /// Request of the items of the [MyoroTable].
  final MyoroTableConfigurationRequest<T> request;

  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  /// Builder of the cells of the row.
  final MyoroTableConfigurationRowBuilder<T> rowBuilder;

  const MyoroTableConfiguration({
    required this.request,
    required this.columns,
    required this.rowBuilder,
  }) : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  MyoroTableConfiguration<T> copyWith({
    MyoroTableConfigurationRequest<T>? request,
    List<MyoroTableColumn>? columns,
    MyoroTableConfigurationRowBuilder<T>? rowBuilder,
  }) {
    return MyoroTableConfiguration(
      request: request ?? this.request,
      columns: columns ?? this.columns,
      rowBuilder: rowBuilder ?? this.rowBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [request, columns, rowBuilder];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  request: $request,\n'
      '  columns: $columns,\n'
      '  rowBuilder: $rowBuilder,\n'
      ');';
}
