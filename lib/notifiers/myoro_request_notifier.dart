import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that requests the data to be retrieved.
typedef MyoroRequestNotifierRequest<T> = FutureOr<T> Function();

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestNotifier<T> extends ValueNotifier<MyoroRequestState<T>> {
  MyoroRequestNotifier() : super(MyoroRequestState<T>());

  /// Executes [request].
  Future<void> fetch(MyoroRequestNotifierRequest<T> request) async {
    String? errorMessage;

    try {
      value = state.createLoadingState();
      final data = await request.call();
      value = state.createSuccessState(data);
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print('[MyoroRequestNotifier<$T>.fetch]: HTTP error: "$errorMessage".');
      }
    } catch (genericError, stackTrace) {
      errorMessage = genericError.toString();
      if (kDebugMode) {
        print('[MyoroRequestNotifier<$T>.fetch]: Generic error: "$errorMessage".');
        print('Stack trace:\n$stackTrace');
      }
    }

    if (errorMessage == null) return;

    value = state.createErrorState(errorMessage);
  }

  /// Alias of [value].
  MyoroRequestState<T> get state => value;
}
