/// Function executed when the selected item changes.
typedef MyoroSingleSelectionDropdownOnChanged<T> = void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingleSelectionDropdownCheckboxOnChanged<T> = void Function(bool enabled, T? selectedItem);

/// Function executed when the selected item changes.
typedef MyoroMultiSelectionDropdownOnChanged<T> = void Function(Set<T> selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiSelectionDropdownCheckboxOnChanged<T> = void Function(bool enabled, Set<T> selectedItems);

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroSelectionDropdownSelectedItemBuilder<T> = String Function(T item);
