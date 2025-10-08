import 'package:faker/faker.dart' hide Color;
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum to distinguish if a [MyoroPieGraph] is a pie or donut.
///
/// Pie = No empty space in the middle of the chart.
/// Donut = Space in the middle of the chart to place a title.
enum MyoroPieGraphEnum {
  /// Pie graph.
  pie,

  /// Donut.
  donut;

  factory MyoroPieGraphEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  bool get isPie => this == pie;
  bool get isDonut => this == donut;
}
