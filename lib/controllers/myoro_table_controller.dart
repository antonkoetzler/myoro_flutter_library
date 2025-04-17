import 'package:myoro_flutter_library/blocs/myoro_table_bloc/myoro_table_bloc.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller of a [MyoroTable].
class MyoroTableController<T> {
  static const fetchAfterwardsDefaultValue = true;

  /// [MyoroTableBloc] that is connected to this [MyoroTableController].
  late MyoroTableBloc<T> bloc;

  /// Fetches the items of the [MyoroTable].
  void fetch() {
    bloc.add(const FetchEvent());
  }

  /// Adds [MyoroFilter]s to [MyoroTable].
  void addFilters(Set<MyoroFilter> filters) {
    bloc.add(AddFiltersEvent(filters));
  }

  /// Removes [MyoroFilter]s from [MyoroTable].
  void removeFilters(Set<MyoroFilter> filters) {
    bloc.add(RemoveFiltersEvent(filters));
  }

  /// Clears all [MyoroFilter]s from [MyoroTable].
  void clearFilters() {
    bloc.add(const ClearFiltersEvent());
  }

  /// Sets the current page of the [MyoroTable].
  void setCurrentPage(int pageNumber) {
    bloc.add(SetCurrentPageEvent(pageNumber));
  }

  /// Sets the amount of items per page of the [MyoroTable].
  void setItemsPerPage(int itemsPerPage) {
    bloc.add(SetItemsPerPageEvent(itemsPerPage));
  }

  /// [MyoroTablePagination] of the [MyoroTable].
  MyoroTablePagination<T> get pagination => bloc.state.pagination;
}
