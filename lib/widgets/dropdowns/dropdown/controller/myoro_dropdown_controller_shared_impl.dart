part of '../myoro_dropdown.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownControllerSharedImpl<T> extends MyoroDropdownController<T> {
  MyoroDropdownControllerSharedImpl(super.configuration);

  @override
  void dispose() {
    _state.dispose();
  }

  @override
  void toggleEnabled([bool? enabled]) {
    enabledNotifier.value = enabled ?? !this.enabled;
  }

  @override
  void toggleItem(T item) {
    final selectedItems = selectedItemsNotifier.value;
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    selectedItemsNotifier.value = selectedItems;
  }

  @override
  void toggleMenu() {
    _overlayPortalController.isShowing ? _overlayPortalController.hide() : _overlayPortalController.show();
  }

  @override
  void clearSelectedItems() {
    selectedItemsNotifier.value = const {};
  }

  /// Formats items in [_selectedItemsNotifier] to display in [_Input].
  void _formatSelectedItems() {
    final Set<T> selectedItems = selectedItemsNotifier.value;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(_configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    _inputController.text = stringBuffer.toString();
  }
}
