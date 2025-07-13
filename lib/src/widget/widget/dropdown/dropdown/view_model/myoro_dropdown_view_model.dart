import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_view_model_state.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<T, C extends MyoroDropdownConfiguration<T>> {
  void initialize(C configuration, MyoroDropdownController<T> controller) {
    _state ??= MyoroDropdownState(configuration);
    _controller = controller;
    if (configuration.menuTypeEnum.isOverlay) state.overlayMenuController.addListener(_overlayMenuControllerListener);
    controller.enabledController.addListener(enabledNotifierListener);
    controller.selectedItemsController.addListener(selectedItemsControllerListener);
    if (controller.selectedItems.isNotEmpty) _formatSelectedItems();
  }

  /// State.
  MyoroDropdownState<T, C>? _state;

  /// [_state] getter.
  MyoroDropdownState<T, C> get state {
    assert(_state != null, '[MyoroDropdownState<$T, $C>.state]: [_state] has not been set yet.');
    return _state!;
  }

  /// Controller.
  MyoroDropdownController<T>? _controller;

  /// [_controller] getter.
  MyoroDropdownController<T> get controller {
    assert(_controller != null, '[MyoroDropdownController<$T, $C>.controller]: [_controller] has not been set yet.');
    return _controller!;
  }

  /// [_controller] setter.
  set controller(MyoroDropdownController<T> controller) {
    _controller = controller;
  }

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
      MyoroDropdownMenuTypeEnum.expanding => state.showingMenu = !state.showingMenu,
      MyoroDropdownMenuTypeEnum.modal => state.showingMenu = !state.showingMenu,
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

  /// Listener of [MyoroDropdownState.overlayMenuController].
  void _overlayMenuControllerListener() {
    state.showingMenu = state.overlayMenuController.isShowing;
  }
}
