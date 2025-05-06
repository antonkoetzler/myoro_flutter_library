part of 'myoro_table_bloc.dart';

@immutable
sealed class MyoroTableEvent<T> {
  const MyoroTableEvent();
}

/// Grabs the [MyoroTable]'s [MyoroTablePagination].
final class FetchEvent<T> extends MyoroTableEvent<T> {
  const FetchEvent();
}
