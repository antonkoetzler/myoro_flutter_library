import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_bar_graph_bar_section.g.dart';

/// For a [MyoroBarGraphBar] with a non-empty [MyoroBarGraphBar.barSections],
/// [MyoroBarGraphBarSection] will occupy a specified piece of a [MyoroBarGraph].
@myoroModel
class MyoroBarGraphBarSection with _$MyoroBarGraphBarSectionMixin {
  /// Starting position of the bar section.
  final double fromY;

  /// Ending position of the bar section
  final double toY;

  /// Color of the bar section.
  final Color color;

  const MyoroBarGraphBarSection({required this.fromY, required this.toY, required this.color});

  factory MyoroBarGraphBarSection.fake() {
    final fromY = faker.randomGenerator.decimal();
    return MyoroBarGraphBarSection(
      fromY: fromY,
      toY: faker.randomGenerator.decimal(min: fromY),
      color: myoroFake<Color>(),
    );
  }
}
