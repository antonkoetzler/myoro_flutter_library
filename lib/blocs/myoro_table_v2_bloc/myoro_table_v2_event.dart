part of 'myoro_table_v2_bloc.dart';

@immutable
sealed class MyoroTableV2Event<T> {
  const MyoroTableV2Event();
}

/// Fetches [MyoroTableV2State.pagination].
///
/// Is not suppose to fetch a fresh [MyoroTableV2State.pagination];
/// it should always be utilizing the [MyoroTableV2State.filters]
/// applied previously to acheve the current [MyoroPagination].
final class FetchEvent<T> extends MyoroTableV2Event<T> {
  const FetchEvent();
}

/// Adds [MyoroFilter]s [MyoroTableV2State.filters].
final class AddFiltersEvent<T> extends MyoroTableV2Event<T> {
  final Set<MyoroFilter> filters;

  const AddFiltersEvent(this.filters);
}

/// Removes [MyoroFilter]s from [MyoroTableV2State.filters].
final class RemoveFiltersEvent<T> extends MyoroTableV2Event<T> {
  final Set<MyoroFilter> filters;

  const RemoveFiltersEvent(this.filters);
}

/// Clears all [MyoroFilter]s from [MyoroTableV2State.filters].
final class ClearFiltersEvent<T> extends MyoroTableV2Event<T> {
  const ClearFiltersEvent();
}
