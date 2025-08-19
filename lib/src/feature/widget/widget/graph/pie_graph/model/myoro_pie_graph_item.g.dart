// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroPieGraphItem] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphItem with _$MyoroPieGraphItemMixin {}
/// ```
mixin _$MyoroPieGraphItemMixin {
  MyoroPieGraphItem get self => this as MyoroPieGraphItem;

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphItem &&
        other.runtimeType == runtimeType &&
        other.value == self.value &&
        other.color == self.color &&
        other.radius == self.radius;
  }

  @override
  int get hashCode {
    return Object.hash(self.value, self.color, self.radius);
  }

  @override
  String toString() =>
      'MyoroPieGraphItem(\n'
      '  value: ${self.value},\n'
      '  color: ${self.color},\n'
      '  radius: ${self.radius},\n'
      ');';
}
