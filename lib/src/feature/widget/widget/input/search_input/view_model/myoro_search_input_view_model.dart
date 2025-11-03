import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_search_input_state.dart';

/// View model of [MyoroSearchInput].
class MyoroSearchInputViewModel<T> {
  /// Default constructor.
  MyoroSearchInputViewModel(String label, MyoroSearchInputSelectedItemBuilder<T> selectedItemBuilder, MyoroSearchInputRequest<T> request)
    : _state = MyoroSearchInputState(label, selectedItemBuilder, request) {
    _state.selectedItemController.addListener(_selectedItemControllerListener);
  }

  /// State.
  final MyoroSearchInputState<T> _state;

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// Listener of [MyoroSearchInputState.selectedItemController].
  void _selectedItemControllerListener() {
    final selectedItem = _state.selectedItem;
    _state.inputController.text = selectedItem != null ? _state.selectedItemBuilder(selectedItem) : kMyoroEmptyString;
  }

  /// [_state] getter.
  MyoroSearchInputState<T> get state {
    return _state;
  }
}
