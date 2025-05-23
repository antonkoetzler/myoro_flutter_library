import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMenu].
class MyoroMenuController<T> implements MyoroMenuInterface {
  MyoroMenuController({required MyoroMenuConfiguration<T> configuration}) {
    state = MyoroMenuState(configuration);
    if (configuration.onEndReachedRequest != null) {
      state.scrollController.addListener(scrollControllerListener);
    }
  }

  late final MyoroMenuState<T> state;

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void fetch() {
    state.itemsRequestController.requestCallback = state.configuration.request;
    unawaited(state.itemsRequestController.fetch());
  }

  @override
  void fetchExtra() {
    final onEndReachedRequest = state.configuration.onEndReachedRequest;

    assert(
      onEndReachedRequest != null,
      '[MyoroMenuViewModel<T>._fetchExtra]: '
      '[_configuration.onEndReachedRequest] cannot be null.',
    );

    state.itemsRequestController.requestCallback = () async => await onEndReachedRequest!(state.items);
    unawaited(state.itemsRequestController.fetch());
  }

  @override
  void search(String query) {
    assert(
      state.configuration.searchCallback != null,
      '[MyoroMenuBloc<$T>.SearchEvent]: [_configuration.searchCallback] cannot be null.',
    );
    state.queriedItemsController.value = query.isEmpty ? null : state.configuration.searchCallback!(query, state.items);
  }

  @override
  void scrollControllerListener() {
    final ScrollPosition position = state.scrollController.position;
    final double pixels = position.pixels;
    final double maxScrollExtent = position.maxScrollExtent;
    if (pixels != maxScrollExtent) return;
    fetchExtra();
  }

  @override
  void jumpToBottomPreviousPosition() {
    if (state.itemsRequest.status.isSuccess && state.onEndReachedPosition != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        state.scrollController.jumpTo(state.onEndReachedPosition!);
      });
    }
  }
}
