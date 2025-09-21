/// Function executed when the selected item changes.
typedef MyoroSingleDropdownOnChanged<T> = void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingleDropdownCheckboxOnChanged<T> = void Function(bool enabled, T? selectedItem);

/// Function executed when the selected item changes.
typedef MyoroMultiDropdownOnChanged<T> = void Function(Set<T> selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiDropdownCheckboxOnChanged<T> = void Function(bool enabled, Set<T> selectedItems);

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownSelectedItemBuilder<T> = String Function(T item);
