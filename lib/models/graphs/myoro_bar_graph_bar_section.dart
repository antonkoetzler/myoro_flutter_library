import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// For a [MyoroBarGraphBar] with a non-empty [MyoroBarGraphBar.barSections],
/// [MyoroBarGraphBarSection] will occupy a specified piece of a [MyoroBarGraph].
class MyoroBarGraphBarSection extends Equatable {
  /// Starting position of the bar section.
  final double fromY;

  /// Ending position of the bar section
  final double toY;

  /// Color of the bar section.
  final Color color;

  const MyoroBarGraphBarSection({required this.fromY, required this.toY, required this.color});

  MyoroBarGraphBarSection copyWith({double? fromY, double? toY, Color? color}) {
    return MyoroBarGraphBarSection(
      fromY: fromY ?? this.fromY,
      toY: toY ?? this.toY,
      color: color ?? this.color,
    );
  }

  factory MyoroBarGraphBarSection.fake() {
    final fromY = faker.randomGenerator.decimal();
    return MyoroBarGraphBarSection(
      fromY: fromY,
      toY: faker.randomGenerator.decimal(min: fromY),
      color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
    );
  }

  @override
  String toString() =>
      'MyoroBarGraphBarSection(\n'
      '  fromY: $fromY,\n'
      '  toY: $toY,\n'
      '  color: $color,\n'
      ');';

  @override
  List<Object?> get props {
    return [fromY, toY, color];
  }
}
