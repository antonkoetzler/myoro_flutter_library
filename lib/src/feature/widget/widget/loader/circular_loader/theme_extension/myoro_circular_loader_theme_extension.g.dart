// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_circular_loader_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCircularLoaderThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCircularLoaderThemeExtension with _$MyoroCircularLoaderThemeExtensionMixin {}
/// ```
mixin _$MyoroCircularLoaderThemeExtensionMixin
    on ThemeExtension<MyoroCircularLoaderThemeExtension> {
  MyoroCircularLoaderThemeExtension get self =>
      this as MyoroCircularLoaderThemeExtension;

  @override
  MyoroCircularLoaderThemeExtension copyWith({
    Color? color,
    bool colorProvided = true,
    double? size,
    bool sizeProvided = true,
  }) {
    return MyoroCircularLoaderThemeExtension(
      color: colorProvided ? (color ?? self.color) : null,
      size: sizeProvided ? (size ?? self.size) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCircularLoaderThemeExtension &&
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
      'MyoroCircularLoaderThemeExtension(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
