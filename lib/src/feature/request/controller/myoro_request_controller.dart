import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ValueNotifier] that executes a [FutureOr] function to retrieve data.
class MyoroRequestController<T> extends ValueNotifier<MyoroRequest<T>> {
  /// Private method to check if the requestCallback is synchronous or asynchronous.
  static bool _isRequestCallbackSync<T>(MyoroRequestControllerRequest<T>? request) {
    if (request == null) return false;

    // Check the function's runtime type to determine if it returns Future
    final functionType = request.runtimeType.toString();

    // If the function type contains 'Future', it's async
    return !functionType.contains('Future');
  }

  /// Default constructor.
  MyoroRequestController(this._request)
    : super(() {
        if (_isRequestCallbackSync(_request)) {
          try {
            final result = _request!();
            return MyoroRequest<T>(status: MyoroRequestEnum.success, data: result as T?);
          } catch (e) {
            return MyoroRequest<T>();
          }
        }
        return MyoroRequest<T>();
      }());

  /// Private variable to check if the [ValueNotifier] is disposed.
  bool _isDisposed = false;

  /// Private variable to store the request callback.
  MyoroRequestControllerRequest<T>? _request;

  /// Dispose function.
  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  /// Executes [request].
  Future<void> fetch() async {
    try {
      // Only set loading state for async functions
      if (!_isRequestCallbackSync(_request) && !_isDisposed) {
        value = request.createLoadingState();
      }

      final result = await _request?.call();
      // Check if disposed before setting success state
      if (!_isDisposed) value = request.createSuccessState(result);
    } catch (e) {
      value = request.createErrorState(e);
    }
  }

  /// Getter of this [ValueNotifier]'s [value].
  MyoroRequest<T> get request {
    return value;
  }

  /// Getter of this [ValueNotifier]'s [value]'s [MyoroRequestEnum].
  MyoroRequestEnum get status {
    return request.status;
  }

  /// Getter of this [ValueNotifier]'s [value]'s [MyoroRequest.error].
  Object? get error {
    return request.error;
  }

  /// Getter of this [ValueNotifier]'s [value]'s [MyoroRequest.data].
  T? get data {
    return request.data;
  }

  /// Setter of the request (function that returns the data to be retrieved).
  void setRequestCallback(MyoroRequestControllerRequest<T> request) {
    _request = request;
  }
}
