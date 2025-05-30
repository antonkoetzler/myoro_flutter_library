import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Shared implementation that both [MyoroSingularDropdown] and [MyoroMultiDropdown] share.
abstract class MyoroDropdownViewModel<T, C extends MyoroDropdownConfiguration<T>>
    implements MyoroDropdownViewModelInterface<T> {
  MyoroDropdownViewModel(C configuration, this.controller) : state = MyoroDropdownViewModelState(configuration) {
    controller.state.enabledController.addListener(enabledNotifierListener);
    controller.state.selectedItemsController.addListener(selectedItemsControllerListener);
    if (controller.state.selectedItems.isNotEmpty) _formatSelectedItems();
  }

  final MyoroDropdownViewModelState<T, C> state;
  final MyoroDropdownController<T> controller;

  @override
  void dispose() {
    state.dispose();
  }

  @override
  void toggleMenu() {
    final overlayPortalController = state.overlayPortalController;
    overlayPortalController.isShowing ? overlayPortalController.hide() : overlayPortalController.show();
  }

  @override
  @mustCallSuper
  void selectedItemsControllerListener() {
    _formatSelectedItems();
  }

  /// Formats items in [_selectedItemsController] to display in [_Input].
  void _formatSelectedItems() {
    final Set<T> selectedItems = controller.state.selectedItemsController.value;
    final stringBuffer = StringBuffer();
    for (int i = 0; i < selectedItems.length; i++) {
      final T item = selectedItems.elementAt(i);
      stringBuffer.write(state.configuration.selectedItemBuilder(item));
      if (i != selectedItems.length - 1) stringBuffer.write(', ');
    }
    state.inputController.text = stringBuffer.toString();
  }
}
