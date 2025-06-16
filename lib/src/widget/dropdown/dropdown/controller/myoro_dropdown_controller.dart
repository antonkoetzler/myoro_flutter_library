import 'package:flutter/foundation.dart';

/// Controller of a dropdown.
abstract class MyoroDropdownController<T> {
  static const enabledDefaultValue = true;

  MyoroDropdownController({bool enabled = enabledDefaultValue, Set<T>? initiallySelectedItems})
    : enabledController = ValueNotifier(enabled),
      selectedItemsController = ValueNotifier(initiallySelectedItems ?? <T>{});

  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  final ValueNotifier<bool> enabledController;
  bool get enabled => enabledController.value;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  final ValueNotifier<Set<T>> selectedItemsController;
  Set<T> get selectedItems => Set.from(selectedItemsController.value);

  /// Dispose function.
  void dispose() {
    enabledController.dispose();
    selectedItemsController.dispose();
  }

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]) {
    enabledController.value = enabled ?? !this.enabled;
  }

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Clears all items in [MyoroDropdownState.selectedItemsController].
  void clear() {
    selectedItemsController.value = const {};
  }
}
