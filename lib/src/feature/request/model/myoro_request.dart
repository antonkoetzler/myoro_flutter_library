import 'dart:async';

import 'package:faker/faker.dart' hide Color;
import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_request.g.dart';

/// Model representing a state where data being fetched via [FutureOr] function.
@immutable
@myoroModel
class MyoroRequest<T> with _$MyoroRequestMixin<T> {
  static const statusDefaultValue = MyoroRequestEnum.idle;

  const MyoroRequest({this.status = statusDefaultValue, this.error, this.data});

  factory MyoroRequest.fake({T? data}) {
    final status = MyoroRequestEnum.fake();
    return MyoroRequest(
      status: status,
      error: status.isError || faker.randomGenerator.boolean() ? Exception(faker.lorem.sentence()) : null,
      data: data,
    );
  }

  /// Status of the request.
  final MyoroRequestEnum status;

  /// Error message when [status] is [MyoroRequestEnum.error].
  final Object? error;

  /// Data generated from the request.
  final T? data;

  MyoroRequest<T> createIdleState() {
    return MyoroRequest(status: MyoroRequestEnum.idle, error: error, data: data);
  }

  MyoroRequest<T> createLoadingState() {
    return MyoroRequest(status: MyoroRequestEnum.loading, error: error, data: data);
  }

  MyoroRequest<T> createSuccessState(T? data) {
    return MyoroRequest(status: MyoroRequestEnum.success, error: error, data: data);
  }

  MyoroRequest<T> createErrorState(Object? error) {
    return MyoroRequest(status: MyoroRequestEnum.error, error: error, data: data);
  }
}
