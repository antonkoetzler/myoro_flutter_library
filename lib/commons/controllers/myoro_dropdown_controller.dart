import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller to manage the state in [MyoroDropdown].
///
/// Holds the selected item(s) in the dropdown.
///
/// Also can control if the dropdown is being displayed or not.
final class MyoroDropdownController<T> {
  /// Transfer [MyoroDropdown.enableMultiSelection] over here to the controller.
  late bool _enableMultiSelection;

  /// Transfer [MyoroDropdown.itemBuilder]over here to the controller.
  late MyoroDropdownItemBuilder<T> _itemBuilder;

  /// Selected items of the dropdown.
  late final ValueNotifier<List<T>> _selectedItemsNotifier;

  /// [ValueNotifier] that controls if the dropdown is being displayed.
  final _displayDropdownNotifier = ValueNotifier<bool>(false);

  MyoroDropdownController([List<T>? items]) {
    _selectedItemsNotifier = ValueNotifier(items ?? []);
  }

  /// Checks if the item is in [selectedItems].
  bool isSelected(T item) => selectedItems.contains(item);

  /// Adds items to [selectedItems].
  void addItems(List<T> items, [bool clearItems = false]) {
    _assert(items);
    _selectedItemsNotifier.value = [
      if (_enableMultiSelection || clearItems) ...selectedItems,
      ...items,
    ];
  }

  /// Removes items from [selectedItems].
  void removeItems(List<T> items) {
    _assert(items);
    _selectedItemsNotifier.value = List.from(selectedItems)..removeWhere((T item) => items.contains(item));
  }

  /// Clears/removes the selected item(s) in the dropdown.
  void clear() => _selectedItemsNotifier.value = [];

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

  String get formattedItems {
    return _selectedItemsNotifier.value.fold<String>(
      '',
      (String current, T item) => '$current${current.isEmpty ? '' : ' '}${_itemBuilder.call(item).text}',
    );
  }

  ValueNotifier<List<T>> get selectedItemsNotifier => _selectedItemsNotifier;
  List<T> get selectedItems => _selectedItemsNotifier.value;
  ValueNotifier<bool> get displayDropdownNotifier => _displayDropdownNotifier;
  bool get displayingDropdown => _displayDropdownNotifier.value;

  set enableMultiSelection(bool enableMultiSelection) => _enableMultiSelection = enableMultiSelection;
  set itemBuilder(MyoroDropdownItemBuilder<T> itemBuilder) => _itemBuilder = itemBuilder;

  /// Simple helper method to assert logic with [enableMultiSelection].
  void _assert(List<T> items) {
    assert(
      _enableMultiSelection ? true : items.length == 1,
      '[MyoroDropdownController]: [enableMultiSelection] is [false]. Only one item may be provided.',
    );
  }
}
