/// [String] builder of the selected items.
typedef MyoroSelectionDropdownSelectedItemBuilder<T> = String Function(T item);

/// Function executed when the selected item is changed.
typedef MyoroSingleSelectionDropdownOnChanged<T> = void Function(T? selectedItem);

/// Function executed when the selected items are changed.
typedef MyoroMultiSelectionDropdownOnChanged<T> = void Function(Set<T> selectedItems);
