part of 'myoro_resolver_bloc.dart';

final class MyoroResolverState<T> extends Equatable {
  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message if the request returns unsuccessful.
  final String? errorMessage;

  /// Result of the request.
  final T? result;

  const MyoroResolverState({this.status = MyoroRequestEnum.idle, this.errorMessage, this.result});

  MyoroResolverState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    T? result,
    bool resultProvided = true,
  }) {
    return MyoroResolverState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      result: resultProvided ? (result ?? this.result) : null,
    );
  }

  @override
  String toString() =>
      'MyoroResolverState<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  result: $result,\n'
      ');';

  @override
  List<Object?> get props => [status, errorMessage, result];
}
