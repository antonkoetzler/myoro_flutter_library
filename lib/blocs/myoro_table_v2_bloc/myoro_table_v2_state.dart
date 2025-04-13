part of 'myoro_table_v2_bloc.dart';

final class MyoroTableV2State<T> extends Equatable {
  /// Standard request enum to fetch [pagination].
  final MyoroRequestEnum status;

  /// Standard error message if there is an error fetching [pagination].
  final String? errorMessage;

  /// Filters being used when generating [pagination].
  final Set<MyoroFilter> filters;

  /// Items of the [MyoroTableV2].
  final MyoroTableV2Pagination<T> pagination;

  const MyoroTableV2State({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.filters = const {},
    required this.pagination,
  }) : assert(
         !(status == MyoroRequestEnum.error && errorMessage == null),
         '[MyoroTableV2State<$T>]: [status] cannot be '
         '[MyoroRequestEnum.error] while [errorMessage] is null',
       );

  MyoroTableV2State<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    Set<MyoroFilter>? filters,
    MyoroTableV2Pagination<T>? pagination,
  }) {
    return MyoroTableV2State(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
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
      'MyoroTableV2State<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  filters: $filters,\n'
      '  pagination: $pagination,\n'
      ');';
}
