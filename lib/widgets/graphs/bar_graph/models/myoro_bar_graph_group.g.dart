// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_group.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroBarGraphGroupExtension on MyoroBarGraphGroup {
  MyoroBarGraphGroup copyWith({int? x, List<MyoroBarGraphBar>? bars}) {
    return MyoroBarGraphGroup(x: x ?? this.x, bars: bars ?? this.bars);
  }
}

/// Apply this mixin to [MyoroBarGraphGroup] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphGroup with $MyoroBarGraphGroupMixin {}
/// ```
mixin $MyoroBarGraphGroupMixin {
  MyoroBarGraphGroup get self => this as MyoroBarGraphGroup;

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
