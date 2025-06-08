// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_item.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroPieGraphItem] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphItem with _$MyoroPieGraphItemMixin {}
/// ```
mixin _$MyoroPieGraphItemMixin {
  MyoroPieGraphItem get self => this as MyoroPieGraphItem;

  MyoroPieGraphItem copyWith({
    double? value,
    Color? color,
    bool colorProvided = true,
    double? radius,
    bool radiusProvided = true,
  }) {
    return MyoroPieGraphItem(
      value: value ?? self.value,
      color: colorProvided ? (color ?? self.color) : null,
      radius: radiusProvided ? (radius ?? self.radius) : null,
    );
  }

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
