import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller for [MyoroTable].
///
/// Responsibilities include:
/// 1. Keeping which column is being ordenated;
/// 2. Being able to refresh the controller.
final class MyoroTableController<T> {
  /// [MyoroTableRow]s of the table to manage state with checkboxes.
  Set<T>? rows;

  /// [MyoroResolverController] of the table.
  MyoroResolverController? resolverController;

  /// [MyoroTableColumn] being ordenated.
  final _ordenatedColumnsNotifier = ValueNotifier<Set<MyoroTableColumn>>({});

  /// [MyoroTableRow]s that are checked when [MyoroTable.checkboxesEnabled] is [true].
  final _rowsCheckedNotifier = ValueNotifier<Set<T>>({});

  /// Disposes [_ordenatedColumnsNotifier].
  void dispose() {
    _ordenatedColumnsNotifier.dispose();
    _rowsCheckedNotifier.dispose();
  }

  /// Refreshes the table.
  void refresh() => resolverController!.refresh();

  /// Enables/disables the ordenated columns.
  void ordenateColumns(
    List<MyoroTableColumn> columns, {
    required bool enabled,
  }) {
    _ordenatedColumnsNotifier.value = _ordenatedColumnsNotifier.value..addAll(columns);
    refresh();
  }

  /// Disables the ordenated columns.
  void disableOrdenation() {
    _ordenatedColumnsNotifier.value = _ordenatedColumnsNotifier.value..clear();
    refresh();
  }

  /// Checks if the provided controller is ordenated.
  bool columnOrdenated(MyoroTableColumn column) => ordenatedColumns.contains(column);

  /// Enables/disables the checkboxes of the rows.
  void toggleCheckboxes(
    List<T> rows, {
    required bool enabled,
  }) {
    _rowsCheckedNotifier.value = Set.from(rowsChecked)..addAll(rows);
  }

  /// Disables all of the checkboxes.
  void toggleAllCheckboxes({required bool enabled}) {
    _rowsCheckedNotifier.value = enabled ? rows! : {};
  }

  /// Checks if a row is checked.
  bool rowChecked(T row) => rowsChecked.contains(row);

  ValueNotifier<Set<MyoroTableColumn>> get ordenatedColumnsNotifier => _ordenatedColumnsNotifier;
  Set<MyoroTableColumn> get ordenatedColumns => _ordenatedColumnsNotifier.value;
  Set<String> get filters => ordenatedColumns.map<String>((MyoroTableColumn column) => column.ordenationFilter!).toSet();

  ValueNotifier<Set<T>> get rowsCheckedNotifier => _rowsCheckedNotifier;
  Set<T> get rowsChecked => _rowsCheckedNotifier.value;
  bool get allRowsChecked => rows?.toSet() == rowsChecked;
}
