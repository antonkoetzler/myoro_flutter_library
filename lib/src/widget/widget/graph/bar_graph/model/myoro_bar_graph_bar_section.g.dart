// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_bar_graph_bar_section.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroBarGraphBarSection] once the code is generated.
///
/// ```dart
/// class MyoroBarGraphBarSection with _$MyoroBarGraphBarSectionMixin {}
/// ```
mixin _$MyoroBarGraphBarSectionMixin {
  MyoroBarGraphBarSection get self => this as MyoroBarGraphBarSection;

  @override
  bool operator ==(Object other) {
    return other is MyoroBarGraphBarSection &&
        other.runtimeType == runtimeType &&
        other.fromY == self.fromY &&
        other.toY == self.toY &&
        other.color == self.color;
  }

  @override
  int get hashCode {
    return Object.hash(self.fromY, self.toY, self.color);
  }

  @override
  String toString() =>
      'MyoroBarGraphBarSection(\n'
      '  fromY: ${self.fromY},\n'
      '  toY: ${self.toY},\n'
      '  color: ${self.color},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroBarGraphBarSectionExtension on MyoroBarGraphBarSection {
  MyoroBarGraphBarSection copyWith({double? fromY, double? toY, Color? color}) {
    return MyoroBarGraphBarSection(
      fromY: fromY ?? self.fromY,
      toY: toY ?? self.toY,
      color: color ?? self.color,
    );
  }
}
