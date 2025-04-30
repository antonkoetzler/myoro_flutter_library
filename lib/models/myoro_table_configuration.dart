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
  final List<MyoroTableColumn> titleColumns;

  /// Function that builds a [MyoroTableRow] to then be rendered.
  final MyoroTableRowBuilder<T> rowBuilder;

  /// [MyoroTablePagination] of the [MyoroTable].
  final MyoroTableConfigurationPaginationRequest<T> request;

  MyoroTableConfiguration._(
    this.controller,
    this.showPaginationControls,
    this.titleColumns,
    this.rowBuilder,
    this.request,
  ) : assert(
        titleColumns.isNotEmpty,
        '[MyoroTable]: [titleColumns] cannot be empty',
      );

  factory MyoroTableConfiguration({
    MyoroTableController<T>? controller,
    bool showPaginationControls = showPaginationControlsDefaultValue,
    required List<MyoroTableColumn> titleColumns,
    required MyoroTableRowBuilder<T> rowBuilder,
    required MyoroTableConfigurationPaginationRequest<T> request,
  }) {
    return MyoroTableConfiguration._(
      controller ?? MyoroTableController(),
      showPaginationControls,
      titleColumns,
      rowBuilder,
      request,
    );
  }

  MyoroTableConfiguration<T> copyWith({
    MyoroTableController<T>? controller,
    bool? showPaginationControls,
    List<MyoroTableColumn>? titleColumns,
    MyoroTableRowBuilder<T>? rowBuilder,
    MyoroTableConfigurationPaginationRequest<T>? request,
  }) {
    return MyoroTableConfiguration(
      controller: controller ?? this.controller,
      showPaginationControls:
          showPaginationControls ?? this.showPaginationControls,
      titleColumns: titleColumns ?? this.titleColumns,
      rowBuilder: rowBuilder ?? this.rowBuilder,
      request: request ?? this.request,
    );
  }

  @override
  List<Object?> get props {
    return [
      controller,
      showPaginationControls,
      titleColumns,
      rowBuilder,
      request,
    ];
  }

  @override
  String toString() =>
      'MyoroTableConfiguration<$T>(\n'
      '  controller: $controller,\n'
      '  showPaginationControls: $showPaginationControls,\n'
      '  titleColumns: $titleColumns,\n'
      '  rowBuilder: $rowBuilder,\n'
      '  request: $request,\n'
      ');';
}
