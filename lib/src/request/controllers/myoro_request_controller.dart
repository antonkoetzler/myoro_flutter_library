// coverage:ignore-file

import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that requests the data to be retrieved.
typedef MyoroRequestControllerRequest<T> = FutureOr<T?> Function();

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestController<T> extends ValueNotifier<MyoroRequest<T>> {
  MyoroRequestController({this.requestCallback}) : super(MyoroRequest<T>());

  bool _isDisposed = false;
  MyoroRequestControllerRequest<T>? requestCallback;

  /// Dispose function.
  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  /// Executes [request].
  Future<void> fetch() async {
    String? errorMessage;

    try {
      // Check if disposed before setting loading state
      if (!_isDisposed) value = request.createLoadingState();

      final result = await requestCallback?.call();

      // Check if disposed before setting success state
      if (!_isDisposed) value = request.createSuccessState(result);
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

    // Check if disposed before setting error state
    if (!_isDisposed) {
      value = request.createErrorState(errorMessage);
    }
  }

  // Getters remain the same
  MyoroRequest<T> get request => value;
  MyoroRequestEnum get status => request.status;
  String? get errorMessage => request.errorMessage;
  T? get data => request.data;
}
