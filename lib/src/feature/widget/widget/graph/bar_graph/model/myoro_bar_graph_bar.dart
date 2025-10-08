import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_bar.g.dart';

/// Bar of a [MyoroBarGraphGroup].
@myoroModel
class MyoroBarGraphBar with _$MyoroBarGraphBarMixin {
  const MyoroBarGraphBar({required this.y, this.color, this.barSections = const []});

  MyoroBarGraphBar.fake()
    : y = faker.randomGenerator.decimal(),
      color = myoroFake<Color>(),
      barSections = List.generate(faker.randomGenerator.integer(5), (_) => MyoroBarGraphBarSection.fake());

  /// Position of the bar on the y axis.
  final double y;

  /// Color of the bar;.
  final Color? color;

  /// Bar sections (for multi-colored bars).
  ///
  /// Overlaps [color] as the bars will have their own colors.
  final List<MyoroBarGraphBarSection> barSections;
}
