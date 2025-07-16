import 'package:flutter/foundation.dart';

/// Controller of a dropdown.
abstract class MyoroDropdownController<T> {
  static const enabledDefaultValue = true;

  MyoroDropdownController({bool enabled = enabledDefaultValue, Set<T>? initiallySelectedItems})
    : _enabledController = ValueNotifier(enabled),
      _selectedItemsController = ValueNotifier(initiallySelectedItems ?? <T>{});

  /// [ValueNotifier] controlling if the [_Dropdown] is enabled or not.
  final ValueNotifier<bool> _enabledController;
  ValueNotifier<bool> get enabledController => _enabledController;
  bool get enabled => _enabledController.value;

  /// [ValueNotifier] controlling the selected items of the [_Dropdown].
  final ValueNotifier<Set<T>> _selectedItemsController;
  ValueNotifier<Set<T>> get selectedItemsController => _selectedItemsController;
  Set<T> get selectedItems => Set.from(_selectedItemsController.value);

  /// Dispose function.
  void dispose() {
    _enabledController.dispose();
    _selectedItemsController.dispose();
  }

  /// Toggles [_enabledNotifier].
  void toggleEnabled([bool? enabled]) {
    _enabledController.value = enabled ?? !this.enabled;
  }

  /// Selects/deselects an item.
  void toggleItem(T item);

  /// Clears all items in [MyoroDropdownState._selectedItemsController].
  void clear() {
    _selectedItemsController.value = const {};
  }
}
