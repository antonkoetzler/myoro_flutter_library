import 'package:flutter/material.dart';

/// [String] builder of the selected items.
typedef MyoroSelectionDropdownV2SelectedItemBuilder<T> = String Function(T item);

/// Function executed when the selected item is changed.
typedef MyoroSingleSelectionDropdownV2OnChanged<T> = void Function(T? selectedItem);

/// Function executed when the selected items are changed.
typedef MyoroMultiSelectionDropdownV2OnChanged<T> = void Function(Set<T> selectedItems);

/// Tuple of the input and input clear text button size.
typedef MyoroSelectionDropdownV2InputAndInputClearTextButtonSize = (Size inputSize, Size? inputClearTextButtonSize);
