import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Multi dropdown controller.
class MyoroMultiDropdownController<T> extends MyoroDropdownController<T> {
  /// Default constructor.
  MyoroMultiDropdownController({super.showing, Set<T> selectedItems = const {}}) : _selectedItemsController = ValueNotifier(selectedItems);

  /// [ValueNotifier] of the selected items.
  final ValueNotifier<Set<T>> _selectedItemsController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemsController.dispose();
    super.dispose();
  }

  /// Toggles an item in the dropdown.
  @override
  void toggleItem(T item) {
    final selectedItems = Set<T>.from(this.selectedItems);
    this.selectedItems = selectedItems.contains(item) ? (selectedItems..remove(item)) : (selectedItems..add(item));
  }

  /// Clears all selected items.
  @override
  void clear() {
    selectedItems = const {};
  }

  /// [_selectedItemsController] getter.
  ValueNotifier<Set<T>> get selectedItemsController {
    return _selectedItemsController;
  }

  /// Getter of [_selectedItemsController]'s value.
  Set<T> get selectedItems {
    return _selectedItemsController.value;
  }

  /// [_selectedItemsController] setter.
  set selectedItems(Set<T> selectedItems) {
    _selectedItemsController.value = selectedItems;
  }
}
