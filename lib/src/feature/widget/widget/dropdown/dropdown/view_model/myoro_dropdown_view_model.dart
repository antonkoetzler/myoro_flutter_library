import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// View model of [MyoroDropdown].
class MyoroDropdownViewModel<T> {
  /// Default constructor.
  MyoroDropdownViewModel(
    ValueNotifier<bool> showingController,
    Set<T>? items,
    Set<T> selectedItems,
    MyoroMenuSearchCallback<T>? searchCallback,
    MyoroDropdownTypeEnum? dropdownType,
    GlobalKey? targetKey,
    MyoroMenuItemBuilder<T> itemBuilder,
    Widget? footer,
  ) : _state = MyoroDropdownState(
        showingController,
        items,
        selectedItems,
        searchCallback,
        dropdownType ??
            (MyoroPlatformHelper.isMobile ? MyoroDropdownTypeEnum.bottomSheet : MyoroDropdownTypeEnum.expanding),
        targetKey,
        itemBuilder,
        footer,
      ) {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    if (isOverlay) state.overlayPortalController = OverlayPortalController();
    _state.showingController.addListener(_showingControllerListener);
  }

  /// State.
  final MyoroDropdownState<T> _state;

  /// Dispose function.
  void dispose() {
    state.showingController.removeListener(_showingControllerListener);
    state.dispose();
  }

  /// Disables the dropdown.
  void disableDropdown() {
    state.showing = false;
  }

  /// Listener for [MyoroDropdownState.showingController].
  void _showingControllerListener() {
    final dropdownType = state.dropdownType;
    final isOverlay = dropdownType.isOverlay;
    final showing = state.showing;
    final targetKey = state.targetKey;
    if (showing) {
      final targetKeyRenderBox = targetKey?.currentContext?.findRenderObject() as RenderBox?;
      state.targetKeySize = targetKeyRenderBox?.size;
      if (isOverlay) state.overlayPortalController.show();
    } else {
      if (isOverlay) state.overlayPortalController.hide();
      state.targetKeySize = null;
    }
  }

  /// [_state] getter.
  MyoroDropdownState<T> get state {
    return _state;
  }
}
