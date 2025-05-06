import 'package:equatable/equatable.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Pagination of a [MyoroTable].
///
/// TODO: Needs to be tested.
class MyoroTablePagination<T> extends Equatable {
  /// Items of the [MyoroTable].
  final Set<T> items;

  const MyoroTablePagination({required this.items});

  MyoroTablePagination copyWith({Set<T>? items}) {
    return MyoroTablePagination(items: items ?? this.items);
  }

  @override
  List<Object?> get props {
    return [items];
  }

  @override
  String toString() =>
      'MyoroTablePagination(\n'
      ');';
}
