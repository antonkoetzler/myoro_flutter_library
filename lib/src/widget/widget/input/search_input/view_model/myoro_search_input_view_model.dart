import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  /// Configuration.
  MyoroSearchInputConfiguration<T>? _configuration;

  /// [_configuration] getter.
  MyoroSearchInputConfiguration<T> get configuration {
    assert(
      _configuration != null,
      '[MyoroSearchInputConfiguration<$T>.configuration]: [_configuration] has not been set yet.',
    );
    return _configuration!;
  }

  /// [_configuration] setter.
  set configuration(MyoroSearchInputConfiguration<T> configuration) {
    _configuration = configuration;
    _itemsRequestController.requestCallback = () => _configuration?.request(inputController.text) ?? const {};
  }

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.inputConfiguration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _itemsRequestController.dispose();
  }
}
