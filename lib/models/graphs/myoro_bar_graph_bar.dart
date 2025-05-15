import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Bar of a [MyoroBarGraphGroup].
class MyoroBarGraphBar extends Equatable {
  /// Position of the bar on the y axis.
  final double y;

  /// Color of the bar;.
  final Color? color;

  /// Bar sections (for multi-colored bars).
  ///
  /// Overlaps [color] as the bars will have their own colors.
  final List<MyoroBarGraphBarSection> barSections;

  const MyoroBarGraphBar({
    required this.y,
    this.color,
    this.barSections = const [],
  });

  MyoroBarGraphBar copyWith({
    double? y,
    Color? color,
    bool colorProvided = true,
    List<MyoroBarGraphBarSection>? barSections,
  }) {
    return MyoroBarGraphBar(
      y: y ?? this.y,
      color: colorProvided ? (color ?? this.color) : null,
      barSections: barSections ?? this.barSections,
    );
  }

  MyoroBarGraphBar.fake()
    : y = faker.randomGenerator.decimal(),
      color = myoroFake<Color>(),
      barSections = List.generate(
        faker.randomGenerator.integer(5),
        (_) => MyoroBarGraphBarSection.fake(),
      );

  @override
  String toString() =>
      'MyoroBarGraphBar(\n'
      '  y: $y,\n'
      '  color: $color,\n'
      '  barSections: $barSections,\n'
      ');';

  @override
  List<Object?> get props {
    return [y, color, barSections];
  }
}
