import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Single dropdown controller.
class MyoroSingleDropdownController<T> extends MyoroDropdownController<T> {
  /// Default constructor.
  MyoroSingleDropdownController({super.showing, T? selectedItem}) : _selectedItemController = ValueNotifier(selectedItem);

  /// [ValueNotifier] of the selected item.
  final ValueNotifier<T?> _selectedItemController;

  /// Dispose function.
  @override
  void dispose() {
    _selectedItemController.dispose();
    super.dispose();
  }

  /// Toggles an item in the dropdown.
  @override
  void toggleItem(T item) {
    selectedItem = selectedItem == item ? null : item;
  }

  /// Clears all selected items.
  @override
  void clear() {
    selectedItem = null;
  }

  /// [_selectedItemController] getter.
  ValueNotifier<T?> get selectedItemController {
    return _selectedItemController;
  }

  /// Getter of [_selectedItemController]'s value.
  T? get selectedItem {
    return _selectedItemController.value;
  }

  /// [_selectedItemController] setter.
  set selectedItem(T? selectedItem) {
    _selectedItemController.value = selectedItem;
  }
}
