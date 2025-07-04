import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModel(C configuration, this._controller) : _state = MyoroDropdownViewModelState(configuration) {
    if (configuration.menuTypeEnum.isOverlay) state.overlayMenuController.addListener(_overlayMenuControllerListener);
    controller.enabledController.addListener(enabledNotifierListener);
    controller.selectedItemsController.addListener(selectedItemsControllerListener);
    if (controller.selectedItems.isNotEmpty) _formatSelectedItems();
  }

  final MyoroDropdownViewModelState<T, C> _state;
  MyoroDropdownViewModelState<T, C> get state => _state;

  final MyoroDropdownController<T> _controller;
  MyoroDropdownController<T> get controller => _controller;

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

    return switch (state.configuration.menuTypeEnum) {
      MyoroDropdownMenuTypeEnum.overlay => toggleOverlayMenu(),
      MyoroDropdownMenuTypeEnum.expanding => _state.showingMenu = !_state.showingMenu,
      MyoroDropdownMenuTypeEnum.modal => _state.showingMenu = !_state.showingMenu,
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
      state.inputSize = renderBox.size;
    });
  }

  /// Creates the [MyoroMenuItem] of an item in the [MyoroMenu].
  @mustCallSuper
  MyoroMenuItem menuItemBuilder(BuildContext context, T item) {
    final menuConfiguration = state.configuration.menuConfiguration;
    final selectedItemsController = controller.selectedItemsController;
    final selectedItems = selectedItemsController.value;

    final MyoroMenuItem menuItem = menuConfiguration.itemBuilder(item);
    return menuItem.copyWith(
      isSelected: selectedItems.contains(item),
      onTapUp: (TapUpDetails details) {
        menuItem.onTapUp?.call(details);
        controller.toggleItem(item);
      },
    );
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

  /// Listener of [MyoroDropdownViewModelState.overlayMenuController].
  void _overlayMenuControllerListener() {
    _state.showingMenu = _state.overlayMenuController.isShowing;
  }
}
