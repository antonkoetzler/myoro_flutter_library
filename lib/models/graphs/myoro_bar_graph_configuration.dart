import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration of [MyoroBarGraph].
class MyoroBarGraphConfiguration extends Equatable {
  static const sortedDefaultValue = true;

  /// If the items of the graph should be sorted.
  final bool sorted;

  /// Items of the graph.
  final List<MyoroBarGraphGroup> items;

  const MyoroBarGraphConfiguration({this.sorted = sortedDefaultValue, required this.items})
    : assert(items.length != 0, '[MyoroBarGraphConfiguration]: [items] must not be empty.');

  MyoroBarGraphConfiguration copyWith({bool? sorted, List<MyoroBarGraphGroup>? items}) {
    return MyoroBarGraphConfiguration(sorted: sorted ?? this.sorted, items: items ?? this.items);
  }

  MyoroBarGraphConfiguration.fake()
    : sorted = faker.randomGenerator.boolean(),
      items = List.generate(
        faker.randomGenerator.integer(10, min: 1),
        (_) => MyoroBarGraphGroup.fake(),
      );

  @override
  List<Object?> get props {
    return [sorted, items];
  }

  @override
  String toString() =>
      'MyoroBarGraphConfiguration(\n'
      '  sorted: $sorted,\n'
      '  items: $items,\n'
      ');';
}
