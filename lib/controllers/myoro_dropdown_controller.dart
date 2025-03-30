import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Pseudo-abstract dropdown controller of dropdowns.
///
/// Not actually abstract as we need create an object in
/// [_Dropdown] in myoro_dropdown_v2.dart if a controller
/// is not provided.
///
/// Additionally, this controller is has methods that
/// are used to shared logic in myoro_dropdown_v2.dart.
class MyoroDropdownController<T> {
  /// [Bloc] of the corresponding dropdown [Widget].
  late MyoroDropdownBloc<T> bloc;

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
}
