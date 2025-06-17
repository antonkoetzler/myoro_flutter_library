import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModel(C configuration, this.controller) : state = MyoroDropdownViewModelState(configuration) {
    controller.enabledController.addListener(enabledNotifierListener);
    controller.selectedItemsController.addListener(selectedItemsControllerListener);
    if (controller.selectedItems.isNotEmpty) {
      _formatSelectedItems();
    }
  }

  final MyoroDropdownViewModelState<T, C> state;
  final MyoroDropdownController<T> controller;

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles [_Menu].
  void toggleMenu() {
    void toggleOverlayMenu() {
      final overlayMenuController = state.overlayMenuController;
      overlayMenuController.isShowing ? overlayMenuController.hide() : overlayMenuController.show();
    }

    void toggleBasicMenu() {
      state.showBasicMenuController.value = !state.showBasicMenuController.value;
    }

    return switch (state.configuration.menuTypeEnum) {
      MyoroDropdownMenuTypeEnum.overlay => toggleOverlayMenu(),
      MyoroDropdownMenuTypeEnum.expanding => toggleBasicMenu(),
      MyoroDropdownMenuTypeEnum.modal => toggleBasicMenu(),
    };
  }

  @protected
  /// Handles the callback of a dropdown's checkbox on changed argument.
  void enabledNotifierListener();

  /// Handles the callback of when [MyoroDropdownState.selectedItemsController] has changed.
  @protected
  @mustCallSuper
  void selectedItemsControllerListener() {
    _formatSelectedItems();
  }

  /// Provides the size of [_Input].
  @mustCallSuper
  void supplyInputSizeController() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final renderBox = state.inputKey.currentContext!.findRenderObject() as RenderBox;
      state.inputSizeController.value = renderBox.size;
    });
  }

  /// Formats items in [_selectedItemsController] to display in [_Input].
  void _formatSelectedItems() {
    final Set<T> selectedItems = controller.selectedItemsController.value;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(state.configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    state.inputController.text = stringBuffer.toString();
  }
}
