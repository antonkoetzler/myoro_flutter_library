import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestController<T> extends ValueNotifier<MyoroRequest<T>> {
  /// Private method to check if the requestCallback is synchronous or asynchronous.
  static bool _isRequestCallbackSync<T>(MyoroRequestControllerRequest<T>? requestCallback) {
    if (requestCallback == null) return false;

    try {
      final result = requestCallback();
      return result is! Future<T?>;
    } catch (e) {
      return false;
    }
  }

  MyoroRequestController({this.requestCallback})
    : super(() {
        if (_isRequestCallbackSync(requestCallback)) {
          try {
            final result = requestCallback!();
            return MyoroRequest<T>(status: MyoroRequestEnum.success, data: result as T?);
          } catch (e) {
            return MyoroRequest<T>();
          }
        }
        return MyoroRequest<T>();
      }());

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
      // Only set loading state for async functions
      if (!_isRequestCallbackSync(requestCallback) && !_isDisposed) {
        value = request.createLoadingState();
      }

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

  MyoroRequest<T> get request => value;
  MyoroRequestEnum get status => request.status;
  String? get errorMessage => request.errorMessage;
  T? get data => request.data;
}
