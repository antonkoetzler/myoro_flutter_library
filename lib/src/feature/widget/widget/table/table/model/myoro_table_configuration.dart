import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_table_configuration.g.dart';

/// Configuration model of [MyoroTable].
@immutable
@myoroModel
class MyoroTableConfiguration<T> with _$MyoroTableConfigurationMixin<T> {
  const MyoroTableConfiguration({required this.request, required this.columns, required this.rowBuilder})
    : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  /// Request of the items of the [MyoroTable].
  final MyoroTableConfigurationRequest<T> request;

  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  /// Builder of the cells of the row.
  final MyoroTableConfigurationRowBuilder<T> rowBuilder;
}
