// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_circular_loader_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroCircularLoaderConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroCircularLoaderConfiguration with _$MyoroCircularLoaderConfigurationMixin {}
/// ```
mixin _$MyoroCircularLoaderConfigurationMixin {
  MyoroCircularLoaderConfiguration get self => this as MyoroCircularLoaderConfiguration;

  MyoroCircularLoaderConfiguration copyWith({
    Color? color,
    bool colorProvided = true,
    double? size,
    bool sizeProvided = true,
  }) {
    return MyoroCircularLoaderConfiguration(
      color: colorProvided ? (color ?? self.color) : null,
      size: sizeProvided ? (size ?? self.size) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCircularLoaderConfiguration &&
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
      'MyoroCircularLoaderConfiguration(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
