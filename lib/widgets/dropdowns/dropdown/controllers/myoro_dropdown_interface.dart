import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of [_Dropdown].
abstract interface class MyoroDropdownInterface<T> {
  /// Dispose function.
  void dispose();

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]);

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Toggles [_Menu].
  void toggleMenu();

  /// Clears all items in [MyoroDropdownState.selectedItemsController].
  void clearSelectedItems();

  /// Handles the callback of a dropdown's checkbox on changed argument.
  @protected
  void enabledNotifierListener();

  /// Handles the callback of when [MyoroDropdownState.selectedItemsController] has changed.
  @protected
  void selectedItemsControllerListener();
}
