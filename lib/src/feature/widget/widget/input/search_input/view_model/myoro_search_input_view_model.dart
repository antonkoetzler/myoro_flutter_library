import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_state.dart';

/// Notifier of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  MyoroSearchInputViewModel(MyoroSearchInputConfiguration<T> configuration)
    : _state = MyoroSearchInputState(configuration);

  /// State.
  final MyoroSearchInputState<T> _state;

  /// [_state] getter.
  MyoroSearchInputState<T> get state {
    return _state;
  }

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// [MyoroButtonConfiguration.onTapUp] of the search button.
  void searchButtonOnTapUp() {
    if (!state.itemsRequest.status.isLoading) state.itemsRequestNotifier.fetch();
  }
}
