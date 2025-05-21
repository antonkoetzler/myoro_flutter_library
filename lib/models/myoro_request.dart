import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing a state where data being fetched via [FutureOr] function.
class MyoroRequest<T> extends Equatable {
  static const statusDefaultValue = MyoroRequestEnum.idle;

  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message when [status] is [MyoroRequestEnum.error].
  final String? errorMessage;

  /// Data generated from
  final T? data;

  const MyoroRequest({this.status = statusDefaultValue, this.errorMessage, this.data})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage == null),
        '[MyoroRequest<T>]: [status] cannot be [MyoroRequestEnum] when [errorMessage] is null.',
      );

  MyoroRequest<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    T? data,
    bool dataProvided = true,
  }) {
    return MyoroRequest(
      status: status ?? this.status,
      errorMessage: errorMessageProvided ? (errorMessage ?? this.errorMessage) : null,
      data: dataProvided ? (data ?? this.data) : null,
    );
  }

  MyoroRequest<T> createIdleState() {
    return copyWith(status: MyoroRequestEnum.idle);
  }

  MyoroRequest<T> createLoadingState() {
    return copyWith(status: MyoroRequestEnum.loading);
  }

  MyoroRequest<T> createSuccessState(T? data) {
    return copyWith(status: MyoroRequestEnum.success, data: data);
  }

  MyoroRequest<T> createErrorState(String errorMessage) {
    return copyWith(status: MyoroRequestEnum.error, errorMessage: errorMessage);
  }

  @override
  List<Object?> get props {
    return [status, errorMessage, data];
  }

  @override
  String toString() =>
      'MyoroRequest<$T>(\n'
      '  status: $status,\n'
      '  errorMessage: $errorMessage,\n'
      '  data: $data,\n'
      ');';
}
