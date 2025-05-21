import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSearchInput].
class MyoroSearchInputController<T> {
  MyoroSearchInputController(this.configuration);

  /// Configuration.
  MyoroSearchInputConfiguration<T> configuration;
  MyoroInputConfiguration get _inputConfiguration => configuration.inputConfiguration;

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localSearchInputController;
  TextEditingController get searchInputController {
    return _inputConfiguration.controller ?? (_localSearchInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  final _itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequestController<Set<T>> get itemsRequestController => _itemsRequestController;
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestController.value;

  /// Dispose function.
  void dispose() {
    _localSearchInputController?.dispose();
    _itemsRequestController.dispose();
  }
}
