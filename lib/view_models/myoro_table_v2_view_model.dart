import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroTableV2].
///
/// TODO: Needs to be tested.
class MyoroTableV2ViewModel<T> {
  /// Configuration of said [MyoroTableV2].
  MyoroTableV2Configuration<T> configuration;

  /// [MyoroRequestEnum] to make requests.
  final _statusNotifier = ValueNotifier<MyoroRequestEnum>(MyoroRequestEnum.idle);
  ValueNotifier<MyoroRequestEnum> get statusNotifier => _statusNotifier;
  MyoroRequestEnum get status => _statusNotifier.value;

  /// Standard request error [String].
  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  /// [MyoroTableV2Pagination] of the [MyoroTableV2].
  final _paginationNotifier = ValueNotifier<MyoroTableV2Pagination<T>?>(null);
  ValueNotifier<MyoroTableV2Pagination<T>?> get paginationNotifier => _paginationNotifier;
  MyoroTableV2Pagination<T>? get pagination => _paginationNotifier.value;

  MyoroTableV2ViewModel({required this.configuration});

  void dispose() {
    _statusNotifier.dispose();
    _paginationNotifier.dispose();
  }

  /// Resolves [MyoroTableV2Configuration.request].
  Future<void> fetch() async {
    _statusNotifier.value = MyoroRequestEnum.loading;
    String? errorMessage;

    try {
      final MyoroTableV2Pagination<T> pagination = await configuration.request();
      _paginationNotifier.value = pagination;
      _statusNotifier.value = MyoroRequestEnum.success;
    } on HttpException catch (httpError) {
      errorMessage = httpError.message;
      if (kDebugMode) {
        print('[MyoroTableV2ViewModel<$T>.fetch]: HTTP exception: "$errorMessage".');
      }
    } catch (error, stackTrace) {
      errorMessage = error.toString();
      if (kDebugMode) {
        print('[MyoroTableV2ViewModel<$T>.fetch]: HTTP exception: "$errorMessage".');
        print('Stack trace:\n$stackTrace');
      }
    }

    _errorMessage = errorMessage;
    if (_errorMessage != null) {
      _statusNotifier.value = MyoroRequestEnum.error;
    }
  }
}
