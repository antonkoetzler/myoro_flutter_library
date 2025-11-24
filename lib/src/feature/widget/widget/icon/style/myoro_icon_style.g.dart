// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconStyle] once the code is generated.
///
/// ```dart
/// class MyoroIconStyle with _$MyoroIconStyleMixin {}
/// ```
mixin _$MyoroIconStyleMixin {
  MyoroIconStyle get self => this as MyoroIconStyle;

  MyoroIconStyle copyWith({Color? color, bool colorProvided = true, double? size, bool sizeProvided = true}) {
    return MyoroIconStyle(
      color: colorProvided ? (color ?? self.color) : null,
      size: sizeProvided ? (size ?? self.size) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconStyle &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.size == self.size;
  }

  @override
  int get hashCode {
    return Object.hash(self.color, self.size);
  }

  @override
  String toString() =>
      'MyoroIconStyle(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
