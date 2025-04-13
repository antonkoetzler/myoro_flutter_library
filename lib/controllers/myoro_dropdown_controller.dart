import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/blocs/myoro_dropdown_bloc/myoro_dropdown_bloc.dart';

/// Pseudo-abstract dropdown controller of dropdowns.
///
/// Not actually abstract as we need create an object in
/// [_Dropdown] in myoro_dropdown_v2.dart if a controller
/// is not provided.
///
/// Additionally, this controller is has methods that
/// are used to shared logic in myoro_dropdown_v2.dart.
class MyoroDropdownController<T> {
  /// [Bloc] of the corresponding dropdown.
  late MyoroDropdownBloc<T> bloc;

  /// [OverlayPortalController] of the dropdown menu.
  final overlayPortalController = OverlayPortalController();

  /// Toggles (or sets if a [enabled] is provided) if the dropdown is enabled or not.
  void toggleEnabled([bool? enabled]) {
    bloc.add(ToggleEnabledEvent(enabled));
  }

  /// Toggles if an item is selected or not.
  void toggleItem(T item) {
    bloc.add(ToggleItemEvent(item));
  }

  /// Removes all selected items.
  void clear() {
    bloc.add(const ClearSelectedItemsEvent());
  }

  /// Toggles whether the dropdown menu is showing.
  void toggleMenu([bool? enabled]) {
    if (enabled != null && enabled != overlayPortalController.isShowing) {
      enabled ? overlayPortalController.show() : overlayPortalController.hide();
    } else {
      overlayPortalController.isShowing
          ? overlayPortalController.hide()
          : overlayPortalController.show();
    }
  }
}
