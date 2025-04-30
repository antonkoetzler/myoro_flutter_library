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

  /// [MyoroTableColumn] state. Null is the initial state.
  final MyoroTableColumnState? columnState;

  const MyoroTableState({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.filters = const {},
    required this.pagination,
    this.columnState,
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
    MyoroTableColumnState? columnState,
    bool columnStateProvided = true,
  }) {
    return MyoroTableState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      filters: filters ?? this.filters,
      pagination: pagination ?? this.pagination,
      columnState: columnStateProvided ? (columnState ?? this.columnState) : null,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, filters, pagination, columnState];
  }

  @override
  String toString() =>
      'MyoroTableState<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  filters: $filters,\n'
      '  pagination: $pagination,\n'
      '  columnState: $columnState,\n'
      ');';

  /// Returns if [MyoroTableColumnState.widths] has been calculated.
  bool get columnWidthsReady {
    return (columnState != null) && (columnState?.widths.isNotEmpty == true);
  }
}

/// State to hold the [List] of [GlobalKey]s connected
/// to each [MyoroTableColumn] and subsequently the widths
/// of each [MyoroTableColumn] gathered from it's [GlobalKey].
///
/// [MyoroTableColumn.widthConfiguration] sets the initial width. But since
/// [MyoroTableColumn.resizable] exists, we need this [ValueNotifier] to keep
final class MyoroTableColumnState extends Equatable {
  /// [GlobalKey]s of [_Column]s.
  final List<GlobalKey> keys;

  /// Widths of the [_Column]s.
  ///
  /// When [widths] is empty, this is the loading state
  /// given there must at least one [MyoroTableColumn].
  final List<double> widths;

  const MyoroTableColumnState({required this.keys, this.widths = const []})
    : assert(keys.length != 0, '[_MyoroTableColumnState]: [keys] cannot be empty.');

  MyoroTableColumnState copyWith({List<GlobalKey>? keys, List<double>? widths}) {
    return MyoroTableColumnState(keys: keys ?? this.keys, widths: widths ?? this.widths);
  }

  @override
  List<Object?> get props {
    return [keys, widths];
  }

  @override
  String toString() =>
      '_MyoroTableColumnState(\n'
      '  keys: $keys,'
      '  widths: $widths,'
      ');';
}
