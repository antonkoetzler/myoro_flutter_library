import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// State of [MyoroMenuController].
class MyoroMenuState<T> {
  MyoroMenuState(this.configuration) {
    itemsRequestController.requestCallback = configuration.request;
  }

  /// Configuration.
  final MyoroMenuConfiguration<T> configuration;

  /// Loaded items in the [MyoroMenu].
  final itemsRequestController = MyoroRequestController<Set<T>>();
  MyoroRequest<Set<T>> get itemsRequest => itemsRequestController.value;
  Set<T> get items => itemsRequestController.value.data ?? <T>{};

  /// Querired items in the [MyoroMenu].
  final queriedItemsController = ValueNotifier<Set<T>?>(null);
  Set<T>? get queriedItems => queriedItemsController.value;

  /// Position of [_scrollController] before [MyoroMenu] was refreshed.
  double? onEndReachedPosition;

  /// To call [MyoroMenuConfiguration.onEndReachedRequest].
  final scrollController = ScrollController();

  /// Dispose function.
  void dispose() {
    itemsRequestController.dispose();
    queriedItemsController.dispose();
    scrollController.dispose();
  }
}
