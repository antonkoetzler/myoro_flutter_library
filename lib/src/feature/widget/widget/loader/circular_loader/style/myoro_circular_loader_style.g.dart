// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_circular_loader_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCircularLoaderStyle] once the code is generated.
///
/// ```dart
/// class MyoroCircularLoaderStyle with _$MyoroCircularLoaderStyleMixin {}
/// ```
mixin _$MyoroCircularLoaderStyleMixin {
  MyoroCircularLoaderStyle get self => this as MyoroCircularLoaderStyle;

  MyoroCircularLoaderStyle copyWith({Color? color, bool colorProvided = true, double? size, bool sizeProvided = true}) {
    return MyoroCircularLoaderStyle(
      color: colorProvided ? (color ?? self.color) : null,
      size: sizeProvided ? (size ?? self.size) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCircularLoaderStyle &&
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
      'MyoroCircularLoaderStyle(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
