import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_request.g.dart';

/// Model representing a state where data being fetched via [FutureOr] function.
@immutable
@myoroModel
class MyoroRequest<T> with _$MyoroRequestMixin<T> {
  static const statusDefaultValue = MyoroRequestEnum.idle;

  const MyoroRequest({this.status = statusDefaultValue, this.errorMessage, this.data})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage == null),
        '[MyoroRequest<T>]: [status] cannot be [MyoroRequestEnum] when [errorMessage] is null.',
      );

  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message when [status] is [MyoroRequestEnum.error].
  final String? errorMessage;

  /// Data generated from
  final T? data;

  MyoroRequest<T> copyWith({
    MyoroRequestEnum? status,
    String? errorMessage,
    bool errorMessageProvided = true,
    T? data,
    bool dataProvided = true,
  }) {
    return MyoroRequest(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      data: data ?? this.data,
    );
  }

  MyoroRequest<T> createIdleState() {
    return copyWith(status: MyoroRequestEnum.idle);
  }

  MyoroRequest<T> createLoadingState() {
    return copyWith(status: MyoroRequestEnum.loading);
  }

  MyoroRequest<T> createSuccessState(T? data) {
    return copyWith(status: MyoroRequestEnum.success, data: data, dataProvided: data != null);
  }

  MyoroRequest<T> createErrorState(String errorMessage) {
    return copyWith(status: MyoroRequestEnum.error, errorMessage: errorMessage);
  }
}
