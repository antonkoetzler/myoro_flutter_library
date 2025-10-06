import 'dart:async';

/// Request to be executed when the search input is triggered.
typedef MyoroSearchInputV2Request<T> = FutureOr<Set<T>> Function(String text);

/// Request that executes when the bottom of the menu is reached.
typedef MyoroSearchInputV2OnEndReachedRequest<T> = FutureOr<Set<T>> Function(Set<T> items);
