part of 'myoro_table_bloc.dart';

@immutable
class MyoroTableState<T> extends Equatable {
  /// Standard request enum.
  final MyoroRequestEnum status;

  /// Standard error message of a request.
  final String? errorMessage;

  /// [MyoroTablePagination] of the [MyoroTable].
  final MyoroTablePagination<T>? pagination;

  const MyoroTableState({this.status = MyoroRequestEnum.idle, this.errorMessage, this.pagination})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage == null),
        '[MyoroTableState<$T>]: When [status] is [MyoroRequestEnum.error], '
        '[errorMessage] cannot be null.',
      ),
      assert(
        !(status == MyoroRequestEnum.success && pagination == null),
        '[MyoroTableState<$T>]: When [status] is [MyoroRequestEnum.success], '
        '[pagination] cannot be null.',
      );

  MyoroTableState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    MyoroTablePagination<T>? pagination,
    bool paginationProvided = true,
  }) {
    return MyoroTableState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      pagination: paginationProvided ? (pagination ?? this.pagination) : null,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, pagination];
  }

  @override
  String toString() =>
      'MyoroTableState(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  pagination: $pagination,\n'
      ');';
}
