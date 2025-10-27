import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_state.dart';

/// View model of a menu.
class MyoroMenuViewModel<T> {
  /// Default constructor.
  MyoroMenuViewModel(
    MyoroMenuRequest<T> request,
    Set<T> selectedItems,
    MyoroMenuOnEndReachedRequest<T>? onEndReachedRequest,
    MyoroMenuSearchCallback<T>? searchCallback,
    MyoroMenuItemBuilder<T> itemBuilder,
  ) : _state = MyoroMenuState(request, selectedItems, onEndReachedRequest, searchCallback, itemBuilder) {
    state.scrollController.addListener(_scrollControllerListener);
  }

  /// State.
  final MyoroMenuState<T> _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Fetches the items of the [MyoroMenu].
  void fetch() {
    state.itemsRequestController.requestCallback = state.request;
    unawaited(state.itemsRequestController.fetch());
  }

  /// Fetches extra items ([MyoroMenuConfiguration.onEndReachedRequest]).
  void fetchExtra() {
    assert(state.onEndReachedRequest != null, '[MyoroMenuViewModel<T>.fetchExtra]: [state.onEndReachedRequest] cannot be null.');
    state.itemsRequestController.requestCallback = () async => await state.onEndReachedRequest!(state.items);
    unawaited(state.itemsRequestController.fetch());
  }

  /// Searches in [_items] given [query].
  void search(String query) {
    assert(state.searchCallback != null, '[MyoroMenuViewModel<T>.search]: [state.searchCallback] cannot be null.');
    state.queriedItemsController.value = query.isEmpty ? null : state.searchCallback!(query, state.items);
  }

  /// Jump to the last position of the list before
  /// calling [MyoroMenuConfiguration.onEndReachedRequest].
  void jumpToBottomPreviousPosition() {
    if (state.itemsRequest.status.isSuccess && state.onEndReachedPosition != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (state.scrollController.hasClients) state.scrollController.jumpTo(state.onEndReachedPosition!);
      });
    }
  }

  /// Listener of [_scrollController].
  void _scrollControllerListener() {
    final ScrollPosition position = state.scrollController.position;
    final double pixels = position.pixels;
    final double maxScrollExtent = position.maxScrollExtent;
    if (pixels != maxScrollExtent) return;
    fetchExtra();
  }

  /// [_state] getter.
  MyoroMenuState<T> get state {
    return _state;
  }
}
