import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Notifier of [MyoroSearchInput].
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
    _itemsRequestNotifier.requestCallback = () => _configuration?.request(inputController.text) ?? const {};
  }

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.inputConfiguration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  final _itemsRequestNotifier = MyoroRequestNotifier<Set<T>>();
  MyoroRequestNotifier<Set<T>> get itemsRequestNotifier => _itemsRequestNotifier;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestNotifier.value;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _itemsRequestNotifier.dispose();
  }
}
