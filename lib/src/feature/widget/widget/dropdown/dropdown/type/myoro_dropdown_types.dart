/// Function executed when the selected item changes.
typedef MyoroSingularDropdownConfigurationOnChanged<T> = void Function(T? selectedItem);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroSingularDropdownConfigurationCheckboxOnChanged<T> = void Function(bool enabled, T? selectedItem);

/// Function executed when the selected item changes.
typedef MyoroMultiDropdownConfigurationOnChanged<T> = void Function(Set<T> selectedItems);

/// Function executed when the enabled/disabled checkbox is pressed.
typedef MyoroMultiDropdownConfigurationCheckboxOnChanged<T> = void Function(bool enabled, Set<T> selectedItems);

/// Builder of the [String] displayed when a [T] item is selected.
typedef MyoroDropdownConfigurationSelectedItemBuilder<T> = String Function(T item);
