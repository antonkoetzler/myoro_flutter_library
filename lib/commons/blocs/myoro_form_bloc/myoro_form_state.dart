part of 'myoro_form_bloc.dart';

final class MyoroFormState<T> extends Equatable {
  /// Status of the form process.
  final MyoroRequestEnum status;

  /// Message of an error that happens in the form process.
  final String? errorMessage;

  /// Result of the form.
  final T? result;

  const MyoroFormState({
    this.status = MyoroRequestEnum.idle,
    this.errorMessage,
    this.result,
  });

  MyoroFormState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    T? result,
  }) {
    return MyoroFormState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      result: result ?? this.result,
    );
  }

  @override
  String toString() => ''
    'MyoroFormState<$T>(\n'
    '  status: $status,\n'
    '  errorMessage: $errorMessage,\n'
    '  result: $result,\n'
    ');';

  @override
  List<Object?> get props => [status, errorMessage, result];
}