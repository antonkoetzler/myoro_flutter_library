import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller for [MyoroMultiDropdown].
final class MyoroMultiDropdownController<T> {
  /// [ValueNotifier] for the selected item(s).
  late final ValueNotifier<Set<T>> _selectedItemsNotifier;

  MyoroMultiDropdownController([List<T>? selectedItems]) {
    _selectedItemsNotifier = ValueNotifier(selectedItems?.toSet() ?? {});
  }

  /// Adds an item to [selectedItems].
  void selectItems(List<T> items) {
    _selectedItemsNotifier.value = Set.from(selectedItems)..addAll(items);
  }

  /// Removes item(s) from [selectedItems].
  void deselectItems(List<T> items) {
    _selectedItemsNotifier.value = Set.from(selectedItems)..removeAll(items);
  }

  /// Clears [selectedItems].
  void clear() {
    _selectedItemsNotifier.value = {};
  }

  /// Disposes [_selectedItemsNotifier].
  void dispose() {
    _selectedItemsNotifier.dispose();
  }

  ValueNotifier<Set<T>> get selectedItemsNotifier => _selectedItemsNotifier;
  Set<T> get selectedItems => _selectedItemsNotifier.value;
}
