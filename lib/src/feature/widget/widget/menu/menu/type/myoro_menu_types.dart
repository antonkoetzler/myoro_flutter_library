import 'dart:async';

import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Returns a [List] of [T] of the filtered items given the query.
typedef MyoroMenuSearchCallback<T> = Set<T> Function(String query, Set<T> items);

/// Request that returns the [MyoroPagination] of the [MyoroMenu].
typedef MyoroMenuRequest<T> = FutureOr<Set<T>> Function();

/// Request that executes when the bottom of the menu is reached.
typedef MyoroMenuOnEndReachedRequest<T> = FutureOr<Set<T>> Function(Set<T> items);

/// [MyoroMenuItem] builder from a generic object.
typedef MyoroMenuItemBuilder<T> = MyoroMenuItem Function(T item);

/// Callback executed when a [MyoroMenu]'s selected items are changed.
typedef MyoroMenuOnChanged<T> = void Function(Set<T> items);
