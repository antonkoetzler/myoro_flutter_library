import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller to manage the state in [MyoroDropdown].
///
/// Holds the selected item(s) in the dropdown.
///
/// Also can control if the dropdown is being displayed or not.
final class MyoroDropdownController<T> {
  /// Selected items of the dropdown.
  late final ValueNotifier<List<T>> _selectedItemsNotifier;

  /// [ValueNotifier] that controls if the dropdown is being displayed.
  final _displayDropdownNotifier = ValueNotifier<bool>(false);

  MyoroDropdownController([List<T>? items]) {
    _selectedItemsNotifier = ValueNotifier(items ?? []);
  }

  /// Programmatically sets the selected item(s).
  void addItems(List<T> items, [bool clearItems = false]) {
    if (clearItems) clear();
    _selectedItemsNotifier.value = List.from(selectedItems)..addAll(items);
  }

  /// Clears/removes the selected item(s) in the dropdown.
  void clear() {
    _selectedItemsNotifier.value = [];
  }

  /// Toggles the dropdown.
  bool toggleDropdown([bool? enabled]) {
    _displayDropdownNotifier.value = enabled ?? !displayingDropdown;
    return displayingDropdown;
  }

  /// Disposes the [this]'s [ValueNotifier] and [_displayDropdownNotifier].
  void dispose() {
    _selectedItemsNotifier.dispose();
    _displayDropdownNotifier.dispose();
  }

  ValueNotifier<List<T>> get selectedItemsNotifier => _selectedItemsNotifier;
  List<T> get selectedItems => _selectedItemsNotifier.value;
  ValueNotifier<bool> get displayDropdownNotifier => _displayDropdownNotifier;
  bool get displayingDropdown => _displayDropdownNotifier.value;
}
