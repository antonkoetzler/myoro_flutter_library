import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller for [MyoroSingularDropdown].
final class MyoroSingularDropdownController<T> {
  /// [ValueNotifier] for the selected item.
  late final ValueNotifier<T?> _selectedItemNotifier;

  MyoroSingularDropdownController([T? selectedItem]) {
    _selectedItemNotifier = ValueNotifier(selectedItem);
  }

  /// Sets [selectedItem].
  void selectItem(T item) {
    _selectedItemNotifier.value = item;
  }

  /// Removes selected item if there is a selected item.
  void deselectItem() {
    _selectedItemNotifier.value = null;
  }

  /// Disposes [_selectedItemNotifier].
  void dispose() {
    _selectedItemNotifier.dispose();
  }

  ValueNotifier<T?> get selectedItemNotifier => _selectedItemNotifier;
  T? get selectedItem => _selectedItemNotifier.value;
}
