import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_state.dart';

/// View model of [MyoroMenu].
abstract class MyoroMenuViewModel<T, C extends MyoroMenuConfiguration<T>> {
  MyoroMenuViewModel(C configuration, Set<T> initiallySelectedItems)
    : _state = MyoroMenuState(configuration, initiallySelectedItems) {
    if (configuration.onEndReachedRequest != null) {
      state.scrollController.addListener(scrollControllerListener);
    }
  }

  /// State.
  final MyoroMenuState<T, C> _state;

  /// [_state] getter.
  MyoroMenuState<T, C> get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Fetches the items of the [MyoroMenu].
  void fetch() {
    state.itemsRequestNotifier.requestCallback = state.configuration.request;
    unawaited(state.itemsRequestNotifier.fetch());
  }

  /// Fetches extra items ([MyoroMenuConfiguration.onEndReachedRequest]).
  @protected
  void fetchExtra() {
    final onEndReachedRequest = state.configuration.onEndReachedRequest;
    assert(
      onEndReachedRequest != null,
      '[MyoroMenuViewModel<T>._fetchExtra]: [_configuration.onEndReachedRequest] cannot be null.',
    );
    state.itemsRequestNotifier.requestCallback = () async => await onEndReachedRequest!(state.items);
    unawaited(state.itemsRequestNotifier.fetch());
  }

  /// Searches in [_items] given [query].
  void search(String query) {
    assert(
      state.configuration.searchCallback != null,
      '[MyoroMenuBloc<$T>.SearchEvent]: [_configuration.searchCallback] cannot be null.',
    );
    state.queriedItemsNotifier.value = query.isEmpty ? null : state.configuration.searchCallback!(query, state.items);
  }

  /// Selects an item.
  void toggleItem(T item);

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
        if (state.scrollController.hasClients) state.scrollController.jumpTo(state.onEndReachedPosition!);
      });
    }
  }
}
