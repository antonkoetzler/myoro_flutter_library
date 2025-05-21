import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMenu].
class MyoroMenuController<T> extends MyoroMenuControllerBase<T> {
  MyoroMenuController(super.configuration) {
    if (configuration.onEndReachedRequest != null) {
      scrollController.addListener(scrollControllerListener);
    }
  }

  @override
  void fetch() {
    itemsRequestController.requestCallback = configuration.request;
    unawaited(itemsRequestController.fetch());
  }

  @override
  void fetchExtra() {
    final onEndReachedRequest = configuration.onEndReachedRequest;

    assert(
      onEndReachedRequest != null,
      '[MyoroMenuViewModel<T>._fetchExtra]: '
      '[_configuration.onEndReachedRequest] cannot be null.',
    );

    itemsRequestController.requestCallback = () async => await onEndReachedRequest!(items);
    unawaited(itemsRequestController.fetch());
  }

  @override
  void search(String query) {
    assert(
      configuration.searchCallback != null,
      '[MyoroMenuBloc<$T>.SearchEvent]: [_configuration.searchCallback] cannot be null.',
    );
    queriedItemsNotifier.value = query.isEmpty ? null : configuration.searchCallback!(query, items);
  }

  @override
  void scrollControllerListener() {
    final ScrollPosition position = scrollController.position;
    final double pixels = position.pixels;
    final double maxScrollExtent = position.maxScrollExtent;
    if (pixels != maxScrollExtent) return;
    fetchExtra();
  }
}
