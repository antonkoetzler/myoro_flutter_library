part of 'myoro_table_v2_bloc.dart';

final class MyoroTableV2State<T> extends Equatable {
  /// Standard request enum to fetch [items].
  final MyoroRequestEnum status;

  /// Standard error message if there is an error fetching [items].
  final String? errorMessage;

  /// Items of the [MyoroTableV2].
  final List<T> items;

  const MyoroTableV2State({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.items = const [],
  }) : assert(
         !(status == MyoroRequestEnum.error && errorMessage == null),
         '[MyoroTableV2State<$T>]: [status] cannot be '
         '[MyoroRequestEnum.error] while [errorMessage] is null',
       );

  MyoroTableV2State<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    List<T>? items,
  }) {
    return MyoroTableV2State(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, items];
  }

  @override
  String toString() =>
      'MyoroTableV2State<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  items: $items,\n'
      ');';
}
