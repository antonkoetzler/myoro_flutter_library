import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Group of bars in a [MyoroBarGraph].
class MyoroBarGraphGroup extends Equatable {
  /// Position of the group in the x axis.
  final int x;

  /// Bars in the group.
  final List<MyoroBarGraphBar> bars;

  const MyoroBarGraphGroup({required this.x, required this.bars});

  MyoroBarGraphGroup copyWith({int? x, List<MyoroBarGraphBar>? bars}) {
    return MyoroBarGraphGroup(x: x ?? this.x, bars: bars ?? this.bars);
  }

  MyoroBarGraphGroup.fake()
    : x = faker.randomGenerator.integer(1000),
      bars = List.generate(
        faker.randomGenerator.integer(50),
        (_) => MyoroBarGraphBar.fake(),
      );

  @override
  String toString() =>
      'MyoroBarGraphGroup(\n'
      '  x: $x,\n'
      '  bars: $bars,\n'
      ');';

  @override
  List<Object?> get props => [x, bars];
}
