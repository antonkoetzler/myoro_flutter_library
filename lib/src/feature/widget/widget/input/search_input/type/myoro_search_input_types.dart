import 'dart:async';

/// Function to retrieve the items.
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String query);

/// [String] builder of the item that is clicked in the dropdown.
typedef MyoroSearchInputSelectedItemBuilder<T> = String Function(T item);
