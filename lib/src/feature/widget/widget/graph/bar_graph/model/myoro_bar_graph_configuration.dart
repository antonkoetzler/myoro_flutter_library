import 'package:faker/faker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_configuration.g.dart';

/// Configuration of [MyoroBarGraph].
@myoroModel
class MyoroBarGraphConfiguration with _$MyoroBarGraphConfigurationMixin {
  static const sortedDefaultValue = true;

  /// If the items of the graph should be sorted.
  final bool sorted;

  /// Items of the graph.
  final List<MyoroBarGraphGroup> items;

  const MyoroBarGraphConfiguration({this.sorted = sortedDefaultValue, required this.items})
    : assert(items.length != 0, '[MyoroBarGraphConfiguration]: [items] must not be empty.');

  // coverage:ignore-start
  MyoroBarGraphConfiguration.fake()
    : sorted = faker.randomGenerator.boolean(),
      items = List.generate(faker.randomGenerator.integer(10, min: 1), (_) => MyoroBarGraphGroup.fake());
  // coverage:ignore-end
}
