import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Model representing the pagination for [MyoroTable].
class MyoroTablePagination<T> extends Equatable {
  /// Current page.
  final int currentPage;

  /// Total # of pages.
  final int totalPages;

  /// # of items per page.
  final int itemsPerPage;

  /// [List] of accepted [itemsPerPage] values.
  ///
  /// If the length of [acceptedItemsPerPage] is empty,
  /// [_ItemsPerPageControl] will not be displayed.
  final Set<int> acceptedItemsPerPage;

  /// Items of the [MyoroTablePagination].
  final List<T> items;

  const MyoroTablePagination({
    this.currentPage = 1,
    this.totalPages = 1,
    this.itemsPerPage = 10,
    this.acceptedItemsPerPage = const {},
    this.items = const [],
  }) : assert(
         acceptedItemsPerPage.length != 1,
         '[MyoroTablePagination<$T>]: [acceptItemsPerPage] cannot be 1.',
       );

  MyoroTablePagination<T> copyWith({
    int? currentPage,
    int? totalPages,
    int? itemsPerPage,
    Set<int>? acceptedItemsPerPage,
    List<T>? items,
  }) {
    return MyoroTablePagination(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      acceptedItemsPerPage: acceptedItemsPerPage ?? this.acceptedItemsPerPage,
      items: items ?? this.items,
    );
  }

  @override
  String toString() =>
      'MyoroTablePagination<$T>(\n'
      '  currentPage: $currentPage,\n'
      '  totalPages: $totalPages,\n'
      '  itemsPerPage: $itemsPerPage,\n'
      '  acceptedItemsPerPage: $acceptedItemsPerPage,\n'
      '  items: $items,\n'
      ');';

  @override
  List<Object?> get props {
    return [currentPage, totalPages, itemsPerPage, items];
  }

  /// Returns if a page number may be traversed to.
  bool isValidPageNumber(int pageNumber) {
    return (pageNumber > 0) && (pageNumber <= totalPages);
  }

  /// If the [MyoroTablePagination] may traverse one page backward.
  bool get canTraverseBackward {
    return currentPage > 1;
  }

  /// If the [MyoroTablePagination] may traverse one page forward.
  bool get canTraverseForward {
    return currentPage < totalPages;
  }
}
