part of 'myoro_form_bloc.dart';

final class MyoroFormState<T> extends Equatable {
  /// Status of the form process.
  final MyoroRequestEnum status;

  /// Message of an error that happens in the form process.
  final String? errorMessage;

  /// Result of the form.
  final T? result;

  const MyoroFormState({this.status = MyoroRequestEnum.idle, this.errorMessage, this.result})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage == null),
        '[MyoroFormState<$T>]: [status] cannot be [MyoroRequestEnum.error] while [errorMessage] is null.',
      );

  MyoroFormState<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    T? result,
    bool resultProvided = true,
  }) {
    return MyoroFormState(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      result: resultProvided ? (result ?? this.result) : null,
    );
  }

  @override
  String toString() =>
      'MyoroFormState<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  result: $result,\n'
      ');';

  @override
  List<Object?> get props => [status, errorMessage, result];
}
