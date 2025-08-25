// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_bar.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroBarGraphBar] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphBar with _$MyoroBarGraphBarMixin {}
/// ```
mixin _$MyoroBarGraphBarMixin {
  MyoroBarGraphBar get self => this as MyoroBarGraphBar;

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphBar &&
        other.runtimeType == runtimeType &&
        other.y == self.y &&
        other.color == self.color &&
        other.barSections == self.barSections;
  }

  @override
  int get hashCode {
    return Object.hash(self.y, self.color, self.barSections);
  }

  @override
  String toString() =>
      'MyoroBarGraphBar(\n'
      '  y: ${self.y},\n'
      '  color: ${self.color},\n'
      '  barSections: ${self.barSections},\n'
      ');';
}
