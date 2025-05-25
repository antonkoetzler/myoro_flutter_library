import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Interface of [MyoroDropdownViewModel].
abstract interface class MyoroDropdownViewModelInterface<T> {
  /// Dispose function.
  void dispose();

  /// Toggles [_Menu].
  void toggleMenu();

  /// Handles the callback of a dropdown's checkbox on changed argument.
  @protected
  void enabledNotifierListener();

  /// Handles the callback of when [MyoroDropdownState.selectedItemsController] has changed.
  @protected
  void selectedItemsControllerListener();
}
