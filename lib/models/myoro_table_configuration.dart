import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Function that builds a [MyoroTableRow] to then be rendered.
typedef MyoroTableRowBuilder<T> = MyoroTableRow<T> Function(T item);

/// Function that gathers the [MyoroTablePagination] of the [MyoroTable].
///
/// Passes the [List] of [MyoroFilter]s that was applied to get the previous [MyoroTablePagination].
typedef MyoroTableConfigurationPaginationRequest<T> =
    FutureOr<MyoroTablePagination<T>> Function(Set<MyoroFilter> filters);

/// Configuration model for [MyoroTable].
class MyoroTableConfiguration<T> extends Equatable {
  static const showPaginationControlsDefaultValue = false;

  /// [MyoroTableController] of the [MyoroTable].
  final MyoroTableController<T> controller;

  /// If [_PaginationControls] should be displayed.
  ///
  /// [_PaginationControls] has controls for the page number and items per page.
  /// If the [MyoroTablePagination.totalPages] is greater than 1, it displays
  /// the page number control. If the [MyoroTablePagination.acceptedItemsPerPage]
  /// is not null, the items per page option will be displayed.
  final bool showPaginationControls;

  /// Title columns of the table.
  final List<MyoroTableColumn> titleCells;

  /// Function that builds a [MyoroTableRow] to then be rendered.
  final MyoroTableRowBuilder<T> rowBuilder;

  /// [MyoroTablePagination] of the [MyoroTable].
  final MyoroTableConfigurationPaginationRequest<T> paginationBuilder;

  MyoroTableConfiguration._(
    this.controller,
    this.showPaginationControls,
    this.titleCells,
    this.rowBuilder,
    this.paginationBuilder,
  ) : assert(titleCells.isNotEmpty, '[MyoroTable]: [titleCells] cannot be empty');

  factory MyoroTableConfiguration({
    MyoroTableController<T>? controller,
    bool showPaginationControls = showPaginationControlsDefaultValue,
    required List<MyoroTableColumn> titleCells,
    required MyoroTableRowBuilder<T> rowBuilder,
    required MyoroTableConfigurationPaginationRequest<T> paginationBuilder,
  }) {
    return MyoroTableConfiguration._(
      controller ?? MyoroTableController(),
      showPaginationControls,
      titleCells,
      rowBuilder,
      paginationBuilder,
    );
  }

  MyoroTableConfiguration<T> copyWith({
    MyoroTableController<T>? controller,
    bool? showPaginationControls,
    List<MyoroTableColumn>? titleCells,
    MyoroTableRowBuilder<T>? rowBuilder,
    MyoroTableConfigurationPaginationRequest<T>? paginationBuilder,
  }) {
    return MyoroTableConfiguration(
      controller: controller ?? this.controller,
      showPaginationControls: showPaginationControls ?? this.showPaginationControls,
      titleCells: titleCells ?? this.titleCells,
      rowBuilder: rowBuilder ?? this.rowBuilder,
      paginationBuilder: paginationBuilder ?? this.paginationBuilder,
    );
  }

  @override
  List<Object?> get props {
    return [controller, showPaginationControls, titleCells, rowBuilder, paginationBuilder];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  controller: $controller,\n'
      '  showPaginationControls: $showPaginationControls,\n'
      '  titleCells: $titleCells,\n'
      '  rowBuilder: $rowBuilder,\n'
      '  paginationBuilder: $paginationBuilder,\n'
      ');';
}
