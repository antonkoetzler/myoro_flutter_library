import 'dart:async';

/// Request to be executed when the search input is triggered.
typedef MyoroSearchInputRequest<T> = FutureOr<Set<T>> Function(String text);

/// Request that executes when the bottom of the menu is reached.
typedef MyoroSearchInputOnEndReachedRequest<T> = FutureOr<Set<T>> Function(Set<T> items);
