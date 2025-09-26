import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Notifier of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  MyoroSearchInputViewModel(this.configuration) {
    _itemsRequestNotifier = MyoroRequestNotifier<Set<T>>(requestCallback: () => configuration.request(inputController.text));
  }

  /// Configuration.
  final MyoroSearchInputConfiguration<T> configuration;

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController? _localInputController;

  /// [TextEditingController] of the [MyoroInput].
  TextEditingController get inputController {
    return configuration.controller ?? (_localInputController ??= TextEditingController());
  }

  /// Items of the [MyoroSearchInput].
  late final MyoroRequestNotifier<Set<T>> _itemsRequestNotifier;

  /// Items of the [MyoroSearchInput].
  MyoroRequestNotifier<Set<T>> get itemsRequestNotifier => _itemsRequestNotifier;

  /// Items of the [MyoroSearchInput].
  MyoroRequest<Set<T>> get itemsRequest => _itemsRequestNotifier.value;

  /// Dispose function.
  void dispose() {
    _localInputController?.dispose();
    _itemsRequestNotifier.dispose();
  }
}
