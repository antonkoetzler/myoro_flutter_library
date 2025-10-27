import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// View model of [MyoroDropdown].
class MyoroDropdownViewModel<T, DROPDOWN_CONTROLLER extends MyoroDropdownController<T>> {
  /// Default constructor.
  MyoroDropdownViewModel(this.state) {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    if (isOverlay) state.overlayPortalController = OverlayPortalController();
  }

  /// State.
  final MyoroDropdownState<T, DROPDOWN_CONTROLLER> state;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles an item in the dropdown.
  void toggleItem(T item) {
    state.dropdownController.toggleItem(item);
  }

  /// Clears all selected items.
  void clear() {
    state.dropdownController.clear();
  }

  /// Enables the dropdown.
  void enableDropdown() {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = state.dropdownController.showing;
    final targetKey = state.targetKey;
    if (showing) return;
    final targetKeyRenderBox = targetKey?.currentContext?.findRenderObject() as RenderBox?;
    state.targetKeySize = targetKeyRenderBox?.size;
    if (isOverlay) state.overlayPortalController.show();
    state.dropdownController.enableDropdown();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = state.dropdownController.showing;
    if (!showing) return;
    if (isOverlay) state.overlayPortalController.hide();
    state.targetKeySize = null;
    state.dropdownController.disableDropdown();
  }
}
