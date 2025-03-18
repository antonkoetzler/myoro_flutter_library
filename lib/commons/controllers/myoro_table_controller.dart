import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller that manages these external controls in [MyoroTable]:
/// 1. Refreshing;
/// 2. Applying pagination actions;
/// 3. Applying filters;
/// 4. Managing checked components with a [MyoroTable] that has checkbox functionality.
final class MyoroTableController<T> {
  /// [MyoroDataConfiguration] to control pagination & filters.
  late MyoroDataConfiguration<T> dataConfiguration;

  /// [MyoroResolverController] to refresh the table's contents.
  late MyoroResolverController resolverController;

  /// [ValueNotifier] to track which [MyoroTableColumn] is being ordenated.
  ///
  /// This will not work if there are no [MyoroTableColumn.ordenationCallback]s provided.
  final _ordenatedColumnNotifier = ValueNotifier<MyoroTableColumn?>(null);

  /// [ValueNotifier] to track which [MyoroTableRow]s are selected via the checkbox functionality.
  ///
  /// This will not work if [MyoroTable.enableCheckboxes] is not true.
  final _rowsSelectedNotifier = ValueNotifier<Set<MyoroTableRow>>({});

  /// Dispose function to dispose of, for example, [_ordenatedColumnNotifier].
  void dispose() {
    _ordenatedColumnNotifier.dispose();
    _rowsSelectedNotifier.dispose();
  }

  /// Refreshes the items with the same current conditions.
  void refresh() {
    resolverController.refresh();
  }

  /// Sets the page number.
  void changePage(int page) {
    assert(
      page <= dataConfiguration.totalPages,
      '[MyoroTableController<$T>.changePage]: Invalid [page] range.',
    );
    dataConfiguration.currentPage = page;
    refresh();
  }

  /// Sets the items per page [MyoroDataConfiguration.itemsPerPage].
  void setItemsPerPage(int itemsPerPage) {
    dataConfiguration.itemsPerPage = itemsPerPage;
    refresh();
  }

  /// Adds filters (automatically filtering duplicates).
  void addFilters(Map<String, dynamic> filters) {
    dataConfiguration.addFilters(filters);
    refresh();
  }

  /// Removes filters.
  void removeFilters(List<String> keys) {
    dataConfiguration.removeFilters(keys);
    refresh();
  }

  /// Clears all filters.
  void clearFilters() {
    dataConfiguration.clearFilters();
    refresh();
  }

  /// Adds rows to [_rowsSelectedNotifier].
  void selectRows(List<MyoroTableRow> rows) {
    _rowsSelectedNotifier.value = Set.from(_rowsSelectedNotifier.value)
      ..addAll(rows.toSet());
  }

  /// Removes selected rows.
  void deselectRows(List<MyoroTableRow> rows) {
    _rowsSelectedNotifier.value = Set.from(_rowsSelectedNotifier.value)
      ..removeAll(rows.toSet());
  }

  /// Check if a [MyoroTableRow] is selected].
  bool isRowSelected(MyoroTableRow row) {
    return _rowsSelectedNotifier.value.contains(row);
  }

  /// Clears all selected [MyoroTableRow]s.
  void clearSelectedRows() {
    _rowsSelectedNotifier.value = {};
  }

  /// Sets the ordenated [MyoroTableColumn].
  void setOrdenatedColumn([MyoroTableColumn? column]) {
    if (_ordenatedColumnNotifier.value != null) {
      removeFilters(_ordenatedColumnNotifier.value!.ordenationCallback!
          .call()
          .keys
          .toList());
    }
    _ordenatedColumnNotifier.value = column;
    if (column != null) {
      addFilters(_ordenatedColumnNotifier.value!.ordenationCallback!.call());
    }
    refresh();
  }

  ValueNotifier<MyoroTableColumn?> get ordenatedColumnNotifier =>
      _ordenatedColumnNotifier;
  MyoroTableColumn? get ordenatedColumn => _ordenatedColumnNotifier.value;
  ValueNotifier<Set<MyoroTableRow>> get rowsSelectedNotifier =>
      _rowsSelectedNotifier;
  List<MyoroTableRow> get rowsSelected => _rowsSelectedNotifier.value.toList();
}
