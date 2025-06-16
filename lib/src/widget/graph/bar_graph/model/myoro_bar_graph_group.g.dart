// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_group.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroBarGraphGroup] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphGroup with _$MyoroBarGraphGroupMixin {}
/// ```
mixin _$MyoroBarGraphGroupMixin {
  MyoroBarGraphGroup get self => this as MyoroBarGraphGroup;

  MyoroBarGraphGroup copyWith({int? x, List<MyoroBarGraphBar>? bars}) {
    return MyoroBarGraphGroup(x: x ?? self.x, bars: bars ?? self.bars);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphGroup &&
        other.runtimeType == runtimeType &&
        other.x == self.x &&
        other.bars == self.bars;
  }

  @override
  int get hashCode {
    return Object.hash(self.x, self.bars);
  }

  @override
  String toString() =>
      'MyoroBarGraphGroup(\n'
      '  x: ${self.x},\n'
      '  bars: ${self.bars},\n'
      ');';
}
