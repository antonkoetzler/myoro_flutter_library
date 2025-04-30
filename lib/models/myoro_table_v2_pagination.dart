import 'package:equatable/equatable.dart';

/// Pagination of a [MyoroTableV2].
///
/// TODO: Needs to be tested.
final class MyoroTableV2Pagination<T> extends Equatable {
  /// TODO: Do the other things of a pagination later.

  /// Items of the [MyoroTableV2Pagination].
  final Set<T> items;

  const MyoroTableV2Pagination({required this.items});

  MyoroTableV2Pagination copyWith({Set<T>? items}) {
    return MyoroTableV2Pagination(items: items ?? this.items);
  }

  @override
  List<Object?> get props {
    return [items];
  }

  @override
  String toString() =>
      'MyoroTableV2Pagination(\n'
      '  items: $items,\n'
      ');';
}
