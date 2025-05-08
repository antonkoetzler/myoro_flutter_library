part of 'myoro_table_bloc.dart';

@immutable
class MyoroTableState<T> extends Equatable {
  /// Standard request enum.
  final MyoroRequestEnum status;

  /// Standard error message of a request.
  final String? errorMessage;

  /// [MyoroTablePagination] of the [MyoroTable].
  final Set<T>? items;

  const MyoroTableState({this.status = MyoroRequestEnum.idle, this.errorMessage, this.items})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage == null),
        '[MyoroTableState<$T>]: When [status] is [MyoroRequestEnum.error], '
        '[errorMessage] cannot be null.',
      ),
      assert(
        !(status == MyoroRequestEnum.success && items == null),
        '[MyoroTableState<$T>]: When [status] is [MyoroRequestEnum.success], '
        '[items] cannot be null.',
      );

  MyoroTableState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    Set<T>? items,
    bool itemsProvided = true,
  }) {
    return MyoroTableState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      items: itemsProvided ? (items ?? this.items) : null,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, items];
  }

  @override
  String toString() =>
      'MyoroTableState(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  items: $items,\n'
      ');';
}
