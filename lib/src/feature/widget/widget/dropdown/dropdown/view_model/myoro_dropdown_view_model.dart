import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// View model of [MyoroDropdown].
class MyoroDropdownViewModel<T> {
  /// Default constructor.
  MyoroDropdownViewModel(
    ValueNotifier<bool> showingController,
    Set<T> selectedItems,
    MyoroDropdownTypeEnum dropdownType,
    GlobalKey? targetKey,
    MyoroMenuRequest<T> request,
    MyoroMenuItemBuilder<T> itemBuilder,
  ) : _state = MyoroDropdownState(showingController, selectedItems, dropdownType, targetKey, request, itemBuilder) {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    if (isOverlay) state.overlayPortalController = OverlayPortalController();
  }

  /// State.
  final MyoroDropdownState<T> _state;

  /// Enables the dropdown.
  void enableDropdown() {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = state.showing;
    final targetKey = state.targetKey;
    if (showing) return;
    final targetKeyRenderBox = targetKey?.currentContext?.findRenderObject() as RenderBox?;
    state.targetKeySize = targetKeyRenderBox?.size;
    if (isOverlay) state.overlayPortalController.show();
    state.showing = true;
  }

  /// Disables the dropdown.
  void disableDropdown() {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = state.showing;
    if (!showing) return;
    if (isOverlay) state.overlayPortalController.hide();
    state.targetKeySize = null;
    state.showing = false;
  }

  /// [_state] getter.
  MyoroDropdownState<T> get state {
    return _state;
  }
}
