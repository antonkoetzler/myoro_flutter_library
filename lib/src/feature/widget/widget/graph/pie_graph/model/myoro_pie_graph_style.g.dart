// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroPieGraphStyle] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphStyle with _$MyoroPieGraphStyleMixin {}
/// ```
mixin _$MyoroPieGraphStyleMixin {
  MyoroPieGraphStyle get self => this as MyoroPieGraphStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphStyle &&
        other.runtimeType == runtimeType &&
        other.itemColor == self.itemColor &&
        other.itemRadius == self.itemRadius;
  }

  @override
  int get hashCode {
    return Object.hash(self.itemColor, self.itemRadius);
  }

  @override
  String toString() =>
      'MyoroPieGraphStyle(\n'
      '  itemColor: ${self.itemColor},\n'
      '  itemRadius: ${self.itemRadius},\n'
      ');';
}
