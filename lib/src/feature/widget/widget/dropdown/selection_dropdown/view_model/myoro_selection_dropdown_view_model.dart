import 'package:flutter/foundation.dart';

part 'myoro_selection_dropdown_state.dart';
part 'myoro_multi_selection_dropdown_state.dart';
part 'myoro_single_selection_dropdown_state.dart';

/// View model of a selection dropdown.
class MyoroSelectionDropdownViewModel<T> {
  /// Default constructor.
  MyoroSelectionDropdownViewModel(this.state);

  /// State.
  final MyoroSelectionDropdownState<T> state;
}
