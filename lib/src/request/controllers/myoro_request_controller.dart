import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that requests the data to be retrieved.
typedef MyoroRequestControllerRequest<T> = FutureOr<T?> Function();

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestController<T> extends ValueNotifier<MyoroRequest<T>> {
  MyoroRequestControllerRequest<T>? requestCallback;

  MyoroRequestController({this.requestCallback}) : super(MyoroRequest<T>());

  /// Executes [request].
  Future<void> fetch() async {
    String? errorMessage;

    try {
      value = request.createLoadingState();
      value = request.createSuccessState(await requestCallback?.call());
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print('[MyoroRequestController<$T>.fetch]: HTTP error: "$errorMessage".');
      }
    } catch (genericError, stackTrace) {
      errorMessage = genericError.toString();
      if (kDebugMode) {
        print('[MyoroRequestController<$T>.fetch]: Generic error: "$errorMessage".');
        print('Stack trace:\n$stackTrace');
      }
    }

    if (errorMessage == null) return;

    value = request.createErrorState(errorMessage);
  }

  MyoroRequest<T> get request => value;
  MyoroRequestEnum get status => request.status;
  String? get errorMessage => request.errorMessage;
  T? get data => request.data;
}
