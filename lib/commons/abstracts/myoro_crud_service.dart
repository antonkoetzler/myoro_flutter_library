import 'dart:async';

/// Basic CRUD service interface.
abstract interface class MyoroCrudService<T> {
  /// Creates a new [T] from [data].
  FutureOr<T> create(Map<String, dynamic> data);

  /// Gets a [T] with id [id].
  FutureOr<T>? get(int id);

  /// Selects a [List<T>] based on [conditions] provided.
  FutureOr<List<T>> select(Map<String, dynamic>? conditions);

  /// Updates [T] with id [id] to be [data].
  FutureOr<T> update(int id, T data);

  /// Deletes [T] with id [id].
  FutureOr<void> delete(int id);
}
