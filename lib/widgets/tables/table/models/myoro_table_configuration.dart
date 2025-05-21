import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroTable].
@immutable
class MyoroTableConfiguration<T> extends Equatable {
  /// Controller of the [MyoroTable].
  final MyoroTableController<T>? controller;

  /// Request of the items of the [MyoroTable].
  final MyoroTableConfigurationRequest<T> request;

  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  /// Builder of the cells of the row.
  final MyoroTableConfigurationRowBuilder<T> rowBuilder;

  const MyoroTableConfiguration({
    this.controller,
    required this.request,
    required this.columns,
    required this.rowBuilder,
  }) : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  MyoroTableConfiguration<T> copyWith({
    MyoroTableController<T>? controller,
    bool controllerProvided = true,
    MyoroTableConfigurationRequest<T>? request,
    List<MyoroTableColumn>? columns,
    MyoroTableConfigurationRowBuilder<T>? rowBuilder,
  }) {
    return MyoroTableConfiguration(
      controller: controllerProvided ? (controller ?? this.controller) : null,
      request: request ?? this.request,
      columns: columns ?? this.columns,
      rowBuilder: rowBuilder ?? this.rowBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [controller, request, columns, rowBuilder];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  controller: $controller,\n'
      '  request: $request,\n'
      '  columns: $columns,\n'
      '  rowBuilder: $rowBuilder,\n'
      ');';
}
