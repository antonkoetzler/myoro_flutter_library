import 'dart:async';

import 'package:faker/faker.dart';
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_request.g.dart';

/// Model representing a state where data being fetched via [FutureOr] function.
@immutable
@myoroModel
class MyoroRequest<T> with _$MyoroRequestMixin<T> {
  static const statusDefaultValue = MyoroRequestEnum.idle;
  static const errorMessageDefaultValue = kMyoroEmptyString;

  const MyoroRequest({this.status = statusDefaultValue, this.errorMessage = errorMessageDefaultValue, this.data})
    : assert(
        !(status == MyoroRequestEnum.error && errorMessage.length == 0),
        '[MyoroRequest<T>]: [status] cannot be [MyoroRequestEnum] when [errorMessage] is null.',
      );

  // coverage:ignore-start
  factory MyoroRequest.fake({T? data}) {
    final status = MyoroRequestEnum.fake();
    return MyoroRequest(
      status: status,
      errorMessage: status.isError || faker.randomGenerator.boolean() ? faker.lorem.sentence() : errorMessageDefaultValue,
      data: data,
    );
  }
  // coverage:ignore-end

  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message when [status] is [MyoroRequestEnum.error].
  final String errorMessage;

  /// Data generated from
  final T? data;

  MyoroRequest<T> copyWith({MyoroRequestEnum? status, String? errorMessage, T? data, bool dataProvided = true}) {
    return MyoroRequest(status: status ?? this.status, errorMessage: errorMessage ?? this.errorMessage, data: data ?? this.data);
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
