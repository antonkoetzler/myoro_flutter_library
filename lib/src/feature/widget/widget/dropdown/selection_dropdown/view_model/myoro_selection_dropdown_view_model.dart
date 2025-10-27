import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';

/// View model of a selection dropdown.
abtract class MyoroSelectionDropdownViewModel<T> {
  /// State.
  final _state = MyoroSelectionDropdownState<T>();

  /// Dispose function.
  void dispose() {
    _state.dispose();
  }

  /// [_state] getter.
  MyoroSelectionDropdownState<T> get state {
    return _state;
  }
}
