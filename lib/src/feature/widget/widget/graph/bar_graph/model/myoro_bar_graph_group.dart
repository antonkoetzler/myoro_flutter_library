import 'package:faker/faker.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_group.g.dart';

/// Group of bars in a [MyoroBarGraph].
@myoroModel
class MyoroBarGraphGroup with _$MyoroBarGraphGroupMixin {
  const MyoroBarGraphGroup({required this.x, required this.bars});

  // coverage:ignore-start
  MyoroBarGraphGroup.fake()
    : x = faker.randomGenerator.integer(1000),
      bars = List.generate(faker.randomGenerator.integer(50), (_) => MyoroBarGraphBar.fake());
  // coverage:ignore-end

  /// Position of the group in the x axis.
  final int x;

  /// Bars in the group.
  final List<MyoroBarGraphBar> bars;

  MyoroBarGraphGroup copyWith({int? x, List<MyoroBarGraphBar>? bars}) {
    return MyoroBarGraphGroup(x: x ?? this.x, bars: bars ?? this.bars);
  }
}
