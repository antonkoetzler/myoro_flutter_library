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

  const MyoroRequest({this.status = statusDefaultValue, this.errorMessage, this.data});

  factory MyoroRequest.fake({T? data}) {
    final status = MyoroRequestEnum.fake();
    return MyoroRequest(
      status: status,
      errorMessage: status.isError || faker.randomGenerator.boolean() ? faker.lorem.sentence() : null,
      data: data,
    );
  }

  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message when [status] is [MyoroRequestEnum.error].
  final String? errorMessage;

  /// Data generated from
  final T? data;

  MyoroRequest<T> createIdleState() {
    return MyoroRequest(status: MyoroRequestEnum.idle, errorMessage: errorMessage, data: data);
  }

  MyoroRequest<T> createLoadingState() {
    return MyoroRequest(status: MyoroRequestEnum.loading, errorMessage: errorMessage, data: data);
  }

  MyoroRequest<T> createSuccessState(T? data) {
    return MyoroRequest(status: MyoroRequestEnum.success, errorMessage: errorMessage, data: data);
  }

  MyoroRequest<T> createErrorState(String errorMessage) {
    return MyoroRequest(status: MyoroRequestEnum.error, errorMessage: errorMessage, data: data);
  }
}
