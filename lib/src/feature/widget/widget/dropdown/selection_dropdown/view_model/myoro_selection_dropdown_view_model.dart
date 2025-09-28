import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_selection_dropdown_state.dart';

/// Shared implementation that both [MyoroSingleSelectionDropdown] and [MyoroMultiSelectionDropdown] share.
abstract class MyoroSelectionDropdownViewModel<
  T,
  CONFIGURATION extends MyoroSelectionDropdownConfiguration<T, MENU_CONFIGURATION>,
  MENU_CONFIGURATION extends MyoroMenuConfiguration<T>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MENU_CONFIGURATION>>
> {
  MyoroSelectionDropdownViewModel(CONFIGURATION configuration, MENU_CONTROLLER menuController)
    : _state = MyoroSelectionDropdownState(configuration, menuController) {
    formatSelectedItems();
    if (configuration.menuTypeEnum.isOverlay) {
      state.overlayMenuController.addListener(_overlayMenuControllerListener);
    }
    state.enabledNotifier.addListener(enabledNotifierListener);
  }

  /// State.
  final MyoroSelectionDropdownState<T, CONFIGURATION, MENU_CONTROLLER> _state;

  /// [_state] getter.
  MyoroSelectionDropdownState<T, CONFIGURATION, MENU_CONTROLLER> get state => _state;

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

  /// Toggles [_Menu].
  void toggleMenu() {
    void toggleOverlayMenu() {
      final overlayMenuController = state.overlayMenuController;
      overlayMenuController.isShowing ? overlayMenuController.hide() : overlayMenuController.show();
    }

    return switch (state.configuration.menuTypeEnum) {
      MyoroSelectionDropdownMenuTypeEnum.overlay => toggleOverlayMenu(),
      MyoroSelectionDropdownMenuTypeEnum.expanding => state.showingMenu = !state.showingMenu,
      MyoroSelectionDropdownMenuTypeEnum.modal => state.showingMenu = !state.showingMenu,
    };
  }

  /// Handles the callback of when [MyoroSelectionDropdownState.selectedItemsNotifier] has changed.
  @protected
  @mustCallSuper
  void selectedItemsNotifierListener() {
    formatSelectedItems();
  }

  /// Provides the size of [_Input].
  @mustCallSuper
  void supplyInputSizeController() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderBox = state.inputKey.currentContext!.findRenderObject() as RenderBox;
      state.inputSize = renderBox.size;
    });
  }

  /// Handles the callback of a dropdown's checkbox on changed argument.
  @protected
  void enabledNotifierListener();

  /// Formats items in [_selectedItemsNotifier] to display in [_Input].
  @protected
  void formatSelectedItems();

  /// Listener of [MyoroSelectionDropdownState.overlayMenuController].
  void _overlayMenuControllerListener() {
    state.showingMenu = state.overlayMenuController.isShowing;
  }
}
