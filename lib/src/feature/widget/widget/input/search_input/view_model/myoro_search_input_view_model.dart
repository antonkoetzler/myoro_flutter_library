import 'package:flutter/material.dart';

part 'myoro_search_input_state.dart';

/// View model of [MyoroSearchInput].
class MyoroSearchInputViewModel {
  /// State.
  final _state = MyoroSearchInputState();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroSearchInputState get state {
    return _state;
  }
}
