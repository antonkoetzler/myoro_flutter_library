import 'dart:async';

/// Function to retrieve the items.
typedef MyoroSearchDropdownRequest<T> = FutureOr<Set<T>> Function(String query);

/// [String] builder of the item that is clicked in the dropdown.
typedef MyoroSearchDropdownSelectedItemBuilder<T> = String Function(T item);

/// Function executed when the selected item is changed.
typedef MyoroSearchDropdownOnChanged<T> = void Function(T? item);

/// Function executed when the enter key is pressed.
typedef MyoroSearchDropdownOnFieldSubmitted<T> = void Function(T? item);

/// Validation.
typedef MyoroSearchDropdownValidation<T> = String? Function(T? item);
