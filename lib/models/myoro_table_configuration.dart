import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [MyoroTablePagination] request.
typedef MyoroTableConfigurationPaginationRequest<T> = FutureOr<MyoroTablePagination<T>> Function();

/// Configuration model of [MyoroTable].
///
/// TODO: Needs to be tested.
@immutable
class MyoroTableConfiguration<T> extends Equatable {
  /// [MyoroTablePagination] request.
  final MyoroTableConfigurationPaginationRequest<T> paginationRequest;

  /// Columns of the [MyoroTable].
  final List<MyoroTableColumn> columns;

  const MyoroTableConfiguration({required this.paginationRequest, required this.columns})
    : assert(columns.length != 0, '[MyoroTableConfiguration<$T>]: [columns] cannot be empty.');

  MyoroTableConfiguration copyWith({
    MyoroTableConfigurationPaginationRequest<T>? paginationRequest,
    List<MyoroTableColumn>? columns,
  }) {
    return MyoroTableConfiguration(
      paginationRequest: paginationRequest ?? this.paginationRequest,
      columns: columns ?? this.columns,
    );
  }

  @override
  List<Object?> get props {
    return [paginationRequest, columns];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  paginationRequest: $paginationRequest,\n'
      '  columns: $columns,\n'
      ');';
}
