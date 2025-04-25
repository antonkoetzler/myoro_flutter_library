part of 'myoro_table_bloc.dart';

final class MyoroTableState<T> extends Equatable {
  /// Standard request enum to fetch [pagination].
  final MyoroRequestEnum status;

  /// Standard error message if there is an error fetching [pagination].
  final String? errorMessage;

  /// Filters being used when generating [pagination].
  final Set<MyoroFilter> filters;

  /// Items of the [MyoroTable].
  final MyoroTablePagination<T> pagination;

  const MyoroTableState({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.filters = const {},
    required this.pagination,
  }) : assert(
         !(status == MyoroRequestEnum.error && errorMessage == null),
         '[MyoroTableState<$T>]: [status] cannot be '
         '[MyoroRequestEnum.error] while [errorMessage] is null',
       );

  MyoroTableState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    Set<MyoroFilter>? filters,
    MyoroTablePagination<T>? pagination,
  }) {
    return MyoroTableState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      filters: filters ?? this.filters,
      pagination: pagination ?? this.pagination,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, filters, pagination];
  }

  @override
  String toString() =>
      'MyoroTableState<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  filters: $filters,\n'
      '  pagination: $pagination,\n'
      ');';
}
