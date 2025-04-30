import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Request of the [MyoroTableV2Pagination] (data of the [MyoroTableV2]).
typedef MyoroTableV2ConfigurationRequest<T> = FutureOr<MyoroTableV2Pagination<T>> Function();

/// Configuration model of [MyoroTableV2].
///
/// TODO: Needs to be tested.
class MyoroTableV2Configuration<T> extends Equatable {
  /// Columns of the table.
  final List<MyoroTableV2Column> columns;

  /// Request of the [MyoroTableV2Pagination] (data of the [MyoroTableV2]).
  final MyoroTableV2ConfigurationRequest<T> request;

  const MyoroTableV2Configuration({required this.columns, required this.request})
    : assert(columns.length != 0, '[MyoroTable]: [columns] cannot be empty.');

  MyoroTableV2Configuration copyWith({
    List<MyoroTableV2Column>? columns,
    MyoroTableV2ConfigurationRequest<T>? request,
  }) {
    return MyoroTableV2Configuration(
      columns: columns ?? this.columns,
      request: request ?? this.request,
    );
  }

  @override
  List<Object?> get props {
    return [columns, request];
  }

  @override
  String toString() =>
      'MyoroTableV2Configuration(\n'
      '  columns: $columns,\n'
      '  request: $request,\n'
      ');';
}
