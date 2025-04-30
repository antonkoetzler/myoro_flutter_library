part of 'myoro_table_bloc.dart';

@immutable
sealed class MyoroTableEvent<T> {
  const MyoroTableEvent();
}

/// Fetches [MyoroTableState.pagination].
///
/// Is not suppose to fetch a fresh [MyoroTableState.pagination];
/// it should always be utilizing the [MyoroTableState.filters]
/// applied previously to acheve the current [MyoroPagination].
final class FetchEvent<T> extends MyoroTableEvent<T> {
  const FetchEvent();
}

/// Adds [MyoroFilter]s [MyoroTableState.filters].
final class AddFiltersEvent<T> extends MyoroTableEvent<T> {
  final Set<MyoroFilter> filters;

  const AddFiltersEvent(this.filters);
}

/// Removes [MyoroFilter]s from [MyoroTableState.filters].
final class RemoveFiltersEvent<T> extends MyoroTableEvent<T> {
  final Set<MyoroFilter> filters;

  const RemoveFiltersEvent(this.filters);
}

/// Clears all [MyoroFilter]s from [MyoroTableState.filters].
final class ClearFiltersEvent<T> extends MyoroTableEvent<T> {
  const ClearFiltersEvent();
}

/// Sets [MyoroTableState]'s [MyoroTablePagination.currentPage].
final class SetCurrentPageEvent<T> extends MyoroTableEvent<T> {
  final int currentPage;

  const SetCurrentPageEvent(this.currentPage);
}

/// Sets [MyoroTableState]'s [MyoroTablePagination.itemsPerPage].
final class SetItemsPerPageEvent<T> extends MyoroTableEvent<T> {
  final int itemsPerPage;

  const SetItemsPerPageEvent(this.itemsPerPage);
}

/// Initializes [MyoroTableState.columnState].
final class InitializeColumnDependenciesEvent<T> extends MyoroTableEvent<T> {
  const InitializeColumnDependenciesEvent();
}

/// Callback used to get each [MyoroTableColumnState.keys]'s widths.
///
/// Is not apart of [InitializeColumnDependenciesEvent] implementation
/// since we need to call this method within [MyoroTable] to avoid
/// null [GlobalKey.currentContext].
final class GetColumnWidthsEvent<T> extends MyoroTableEvent<T> {
  const GetColumnWidthsEvent();
}
