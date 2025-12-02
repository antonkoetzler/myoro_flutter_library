import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// View model of a selection dropdown.
abstract class MyoroSelectionDropdownViewModel<T, S extends MyoroSelectionDropdownState<T>> {
  /// Default constructor.
  MyoroSelectionDropdownViewModel(this._state) {
    formatItems();
  }

  /// State.
  final S _state;

  /// Dispose function.
  @mustCallSuper
  void dispose() {
    state.dispose();
  }

  /// On tap function.
  void onTap() {
    state.showing = !state.showing;
  }

  /// Listener for [MyoroMultiSelectionDropdownState.selectedItemsController].
  @protected
  void formatItems();

  /// Item builder.
  MyoroMenuItem itemBuilder(int index, T item);

  /// [_state] getter.
  S get state {
    return _state;
  }
}
