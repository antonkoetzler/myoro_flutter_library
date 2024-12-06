import 'package:flutter/foundation.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Controller for [MyoroTable].
///
/// Responsibilities include:
/// 1. Keeping which column is being ordenated;
/// 2. Being able to refresh the controller.
final class MyoroTableController {
  /// [MyoroResolverController] of the table.
  MyoroResolverController? resolverController;

  /// [MyoroTableColumn] being ordenated.
  final _ordenatedColumnsNotifier = ValueNotifier<Set<MyoroTableColumn>>({});

  /// Disposes [_ordenatedColumnsNotifier].
  void dispose() => _ordenatedColumnsNotifier.dispose();

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

  ValueNotifier<Set<MyoroTableColumn>> get ordenatedColumnsNotifier => _ordenatedColumnsNotifier;
  Set<MyoroTableColumn> get ordenatedColumns => _ordenatedColumnsNotifier.value;
  Set<String> get filters => ordenatedColumns.map<String>((MyoroTableColumn column) => column.ordenationFilter!).toSet();
}
