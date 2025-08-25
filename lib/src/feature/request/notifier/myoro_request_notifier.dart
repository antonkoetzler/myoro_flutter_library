import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestNotifier<T> extends ValueNotifier<MyoroRequest<T>> {
  MyoroRequestNotifier({this.requestCallback}) : super(MyoroRequest<T>());

  bool _isDisposed = false;
  MyoroRequestNotifierRequest<T>? requestCallback;

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

    // Check if disposed before setting error state
    if (!_isDisposed) {
      value = request.createErrorState(errorMessage);
    }
  }

  MyoroRequest<T> get request => value;
  MyoroRequestEnum get status => request.status;
  String? get errorMessage => request.errorMessage;
  T? get data => request.data;
}
