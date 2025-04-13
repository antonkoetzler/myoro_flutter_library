import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing the pagination for [MyoroTableV2].
class MyoroTableV2Pagination<T> extends Equatable {
  /// Current page.
  final int currentPage;

  /// Total # of pages.
  final int totalPages;

  /// # of items per page.
  final int itemsPerPage;

  /// Items of the [MyoroTableV2Pagination].
  final List<T> items;

  const MyoroTableV2Pagination({
    this.currentPage = 1,
    this.totalPages = 1,
    this.itemsPerPage = 10,
    this.items = const [],
  });

  MyoroTableV2Pagination<T> copyWith({
    int? currentPage,
    int? totalPages,
    int? itemsPerPage,
    List<T>? items,
  }) {
    return MyoroTableV2Pagination(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      items: items ?? this.items,
    );
  }

  @override
  String toString() =>
      'MyoroTableV2Pagination<$T>(\n'
      '  currentPage: $currentPage,\n'
      '  totalPages: $totalPages,\n'
      '  itemsPerPage: $itemsPerPage,\n'
      '  items: $items,\n'
      ');';

  @override
  List<Object?> get props {
    return [currentPage, totalPages, itemsPerPage, items];
  }
}
