import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of [MyoroMenu].
class MyoroMenuViewModel<T> {
  MyoroMenuViewModel(MyoroMenuConfiguration<T> configuration) {
    state = MyoroMenuViewModelState(configuration);
    if (configuration.onEndReachedRequest != null) {
      state.scrollController.addListener(scrollControllerListener);
    }
  }

  late final MyoroMenuViewModelState<T> state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Fetches the items of the [MyoroMenu].
  void fetch() {
    state.itemsRequestController.requestCallback = state.configuration.request;
    unawaited(state.itemsRequestController.fetch());
  }

  /// Fetches extra items ([MyoroMenuConfiguration.onEndReachedRequest]).
  @protected
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

  /// Searches in [_items] given [query].
  void search(String query) {
    assert(
      state.configuration.searchCallback != null,
      '[MyoroMenuBloc<$T>.SearchEvent]: [_configuration.searchCallback] cannot be null.',
    );
    state.queriedItemsController.value = query.isEmpty ? null : state.configuration.searchCallback!(query, state.items);
  }

  /// Listener of [_scrollController].
  @protected
  void scrollControllerListener() {
    final ScrollPosition position = state.scrollController.position;
    final double pixels = position.pixels;
    final double maxScrollExtent = position.maxScrollExtent;
    if (pixels != maxScrollExtent) return;
    fetchExtra();
  }

  /// Jump to the last position of the list before
  /// calling [MyoroMenuConfiguration.onEndReachedRequest].
  void jumpToBottomPreviousPosition() {
    if (state.itemsRequest.status.isSuccess && state.onEndReachedPosition != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        state.scrollController.jumpTo(state.onEndReachedPosition!);
      });
    }
  }
}
