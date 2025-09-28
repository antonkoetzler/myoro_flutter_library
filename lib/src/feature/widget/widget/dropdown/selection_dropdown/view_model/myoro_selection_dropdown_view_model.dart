import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';

/// Shared implementation that both [MyoroSingleSelectionDropdown] and [MyoroMultiSelectionDropdown] share.
abstract class MyoroSelectionDropdownViewModel<
  T,
  CONFIGURATION extends MyoroSelectionDropdownConfiguration<T, DROPDOWN_CONFIGURATION>,
  DROPDOWN_CONFIGURATION extends MyoroDropdownConfiguration<T, MyoroMenuConfiguration<T>>,
  DROPDOWN_CONTROLLER
      extends MyoroDropdownController<T, DROPDOWN_CONFIGURATION, MyoroDropdownViewModel<T, DROPDOWN_CONFIGURATION>>
> {
  MyoroSelectionDropdownViewModel(CONFIGURATION configuration, DROPDOWN_CONTROLLER dropdownController)
    : _state = MyoroSelectionDropdownState(configuration, dropdownController) {
    formatSelectedItems();
    state.enabledNotifier.addListener(enabledNotifierListener);
  }

  /// State.
  final MyoroSelectionDropdownState<T, CONFIGURATION, DROPDOWN_CONFIGURATION> _state;

  /// [_state] getter.
  MyoroSelectionDropdownState<T, CONFIGURATION, DROPDOWN_CONFIGURATION> get state => _state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Builds the menu [Widget].
  Widget menuWidget(BuildContext context);

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]) {
    state.enabledNotifier.value = enabled ?? !state.enabled;
  }

  /// Handles the callback of when [MyoroSelectionDropdownState.selectedItemsNotifier] has changed.
  @protected
  @mustCallSuper
  void selectedItemsNotifierListener() {
    formatSelectedItems();
  }

  /// Handles the callback of a dropdown's checkbox on changed argument.
  @protected
  void enabledNotifierListener();

  /// Formats items in [_selectedItemsNotifier] to display in [_Input].
  @protected
  void formatSelectedItems();
}
