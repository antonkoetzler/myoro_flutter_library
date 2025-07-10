import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  MyoroSearchInputViewModel(this.configuration);

  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localInputController;
  TextEditingController get inputController {
    return configuration.inputConfiguration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  final itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequest<Set<T>> get itemsRequest => itemsRequestController.value;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    itemsRequestController.dispose();
  }
}
