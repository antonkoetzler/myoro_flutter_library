import 'dart:async';

/// Function to retrieve the items.
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String query);

/// [String] builder of the item that is clicked in the dropdown.
typedef MyoroSearchInputSelectedItemBuilder<T> = String Function(T item);

/// Function executed when the selected item is changed.
typedef MyoroSearchInputOnChanged<T> = void Function(T? item);

/// Function executed when the enter key is pressed.
typedef MyoroSearchInputOnFieldSubmitted<T> = void Function(T? item);

/// Validation.
typedef MyoroSearchInputValidation<T> = String? Function(T? item);
