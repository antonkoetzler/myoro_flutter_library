import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownController<T, C extends MyoroDropdownConfiguration<T>>
    implements MyoroDropdownInterface<T> {
  /// State.
  late final MyoroDropdownState<T, C> state;

  MyoroDropdownController(C configuration) {
    state = MyoroDropdownState(configuration, enabledNotifierListener, selectedItemsControllerListener);
  }

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void toggleEnabled([bool? enabled]) {
    state.enabledController.value = enabled ?? !state.enabled;
  }

  @override
  void toggleItem(T item) {
    final selectedItems = state.selectedItemsController.value;
    selectedItems.contains(item) ? selectedItems.remove(item) : selectedItems.add(item);
    state.selectedItemsController.value = selectedItems;
  }

  @override
  void toggleMenu() {
    final overlayPortalController = state.overlayPortalController;
    overlayPortalController.isShowing ? overlayPortalController.hide() : overlayPortalController.show();
  }

  @override
  void clearSelectedItems() {
    state.selectedItemsController.value = const {};
  }

  @override
  void selectedItemsControllerListener() {
    _formatSelectedItems();
  }

  /// Formats items in [_selectedItemsController] to display in [_Input].
  void _formatSelectedItems() {
    final Set<T> selectedItems = state.selectedItemsController.value;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(state.configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    state.inputController.text = stringBuffer.toString();
  }
}
