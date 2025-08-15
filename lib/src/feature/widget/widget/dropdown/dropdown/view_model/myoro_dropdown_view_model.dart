import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_dropdown_state.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<T, C extends MyoroDropdownConfiguration<T>> {
  MyoroDropdownViewModel(C configuration, Set<T> selectedItems)
    : _state = MyoroDropdownState(configuration, selectedItems) {
    if (configuration.menuTypeEnum.isOverlay) state.overlayMenuController.addListener(_overlayMenuControllerListener);
    state.enabledNotifier.addListener(enabledNotifierListener);
    state.selectedItemsNotifier.addListener(selectedItemsNotifierListener);
    if (state.selectedItems.isNotEmpty) _formatSelectedItems();
  }

  /// State.
  final MyoroDropdownState<T, C> _state;

  /// [_state] getter.
  MyoroDropdownState<T, C> get state => _state;

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Handles the callback of a dropdown's checkbox on changed argument.
  @protected
  void enabledNotifierListener();

  /// Dispose function.
  void dispose() {
    state.dispose();
  }

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]) {
    state.enabledNotifier.value = enabled ?? !state.enabled;
  }

  /// Clears all items in [MyoroDropdownState._selectedItemsNotifier].
  void clear() {
    state.selectedItemsNotifier.value = const {};
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
    final selectedItemsNotifier = state.selectedItemsNotifier;
    final selectedItems = selectedItemsNotifier.value;

    final MyoroMenuItem menuItem = menuConfiguration.itemBuilder(item);
    return menuItem.copyWith(
      isSelected: selectedItems.contains(item),
      onTapUp: (TapUpDetails details) {
        menuItem.onTapUp?.call(details);
        toggleItem(item);
      },
    );
  }

  /// Formats items in [_selectedItemsNotifier] to display in [_Input].
  void _formatSelectedItems() {
    final Set<T> selectedItems = state.selectedItemsNotifier.value;
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
