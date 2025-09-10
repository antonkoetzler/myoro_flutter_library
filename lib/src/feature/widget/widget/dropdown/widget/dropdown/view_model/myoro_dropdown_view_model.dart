import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<
  T,
  CONFIGURATION extends MyoroDropdownConfiguration<T, MENU_CONFIGURATION>,
  MENU_CONFIGURATION extends MyoroMenuConfiguration<T>,
  MENU_CONTROLLER extends MyoroMenuController<T, MyoroMenuViewModel<T, MENU_CONFIGURATION>>
> {
  MyoroDropdownViewModel(CONFIGURATION configuration, MENU_CONTROLLER menuController)
    : _state = MyoroDropdownState(configuration, menuController) {
    if (configuration.menuTypeEnum.isOverlay) state.overlayMenuController.addListener(_overlayMenuControllerListener);
    state.enabledNotifier.addListener(enabledNotifierListener);
  }

  /// State.
  final MyoroDropdownState<T, CONFIGURATION, MENU_CONTROLLER> _state;

  /// [_state] getter.
  MyoroDropdownState<T, CONFIGURATION, MENU_CONTROLLER> get state => _state;

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
      MyoroDropdownMenuTypeEnum.overlay => toggleOverlayMenu(),
      MyoroDropdownMenuTypeEnum.expanding => state.showingMenu = !state.showingMenu,
      MyoroDropdownMenuTypeEnum.modal => state.showingMenu = !state.showingMenu,
    };
  }

  /// Handles the callback of when [MyoroDropdownState.selectedItemsNotifier] has changed.
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

  /// Listener of [MyoroDropdownState.overlayMenuController].
  void _overlayMenuControllerListener() {
    state.showingMenu = state.overlayMenuController.isShowing;
  }
}
